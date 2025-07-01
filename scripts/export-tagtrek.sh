#!/usr/bin/env bash


# 0. Preamble.
#
#   * Declares how the document should be interpreted (Shebang above)
#   * Establishes global rules or safety switches
#
#   Crash fast on errors and unset variables
#     -e:: exit on any non-zero command
#     -u: treat the use of an unset variable as an error
#     -o pipefail: if any stage of a pipeline fails, the pipeline's exit code is non-zero.
set -euo pipefail

# 1. Export respository setup.
# Delcare common varibles.

# The parent directory for both the vault and export dir.
ROOT="/d/Learning"

# The path to the vault root directory.
VAULT="$ROOT/Obsidian/JimsVault"

# The path to the pasted-in note attachments
ATTACHMENTS="$VAULT/attachments"

# The path to the export repository.
DEST="$ROOT/TagTrek-gh"

# 2. "Wipe and stage" directory (Clean)
#
# Recursively delete the temp workspace directory
#   -r: recursively remove directories and their contents
#   -f: force - ignore non-existent files and arguments, never prompt
rm -rf "$DEST/tmp"

# Recreate with parent directories if needed.
mkdir -p "$DEST/tmp"

# 3. Copy only TagTrek and 'publish: true" notes preserving whitespace in file names.
#
# Copy only notes with front matter properties "^project: tag-trek" and "^publish: true"
# Pipeline command #1
#   grep: pattern search utility
#     -r: recursively, but don't follow symlinks
#     -l: list files with matches
#     -Z: Output a zero byte (the ASCII NUL character) instead of the character that normally
#         follows a file name, e.g., a newline
#     --include: use GLOB for markdown files
#     -e: regular expression for tag-trek project files.
#     $VAULT: starting directory
# Pipeline command #2
#   Loop through the file paths passed from the previous command while there are lines
#   in the pipeline. 
#     IFS= Internal Field Separator - Preserves filename (inadvertent) leading and trailing whitespace 
#     Uses the 'read' command 
#       -r   : Raw - don't treat backslashes as escape characters
#       -d '': This is a NUL delimiter that prevents the 'read' command from splitting the file name
#              on spaces
#     Gets the relative path of the file to the vault path using parameter expansion and
#     Assigns the value to the variable 'rel'.
#       src: the absolute path the tag-trek file
#       #: the operator that says, "remove shortest path prefix that matches the pattern"
#       $VAULT: The absolute path to the vault 
#       result -> the relative path to the tag-trek file stripped from the absolute $src path.
#     Creates the directories under the temp working directory 'tmp'
#        mkdir
#   	   -p: creates a directory under the temporary working directory that matches the parent
#   	       directory of 'rel'
#          $(dirname "$rel"): Command substitution that gets the parent directory from $rel and add to the
#                             temp directory location.
#     Copies the tag-trek file from the absolute path to $src to the destination directory
#     Converts an Obsidian embed, ![[...]], into a markdown file link GitHub understands using the 'sed' command.

grep -rlZ --include="*.md" -e "^project: tag-trek" "$VAULT" \
  | while IFS= read -r -d '' src; do
      echo "$src"
	  if grep -q '^publish: *true' "$src"; then
	    rel="${src#$VAULT/}"
	    mkdir -p "$DEST/tmp/$(dirname "$rel")"
	    cp "$src" "$DEST/tmp/$rel"
        # Convert  ![[...]]  →  ![filename](attachments/filename)
	    # convert  ![[foo.png]]  ➔  ![foo.png](attachments/foo.png)
	    sed -E -i 's@!\[\[([^]]+\.(png|jpe?g|gif|svg|webp))(\|[^]]*)?]]@![\1](<attachments/\1>)@gI' "$DEST/tmp/$rel"
	  fi
    done
   
# 4. Parse the exported notes and copy only referenced images. 
# Pipeline command #1
#   grep: pattern search utility
#     -r: Rrecursively, but don't follow symlinks
#       Regex:
#         !     : Literal exclamation point, which is what Obsidian embeds start with
#         \[\[  : Escaped metacharacters, now characters, that anchors the pattern to an embed, not a generic link.
#         \K    : PCRE reset that discards the previous part of the match.
#         [^]]+ : One or more characters that aren't the closing bracket of the Obsidian embed
#         \.    : Literal period that separages the file name from its extension
#         (png|jpe?g|gif|svg|webp): The alternation,  or 'or' that describes the file extension
#       There's no need to 'close' the regular expression; the character inversion [^]] does that for us
#     -o: Print only the matching text, not the whole line
#     -h: No file name prefixes in output
#     -P: Use PCRE plus for its reset '\K' to get the exact file name 
# Pipeline #2:
#   sort: sort command
#     -u: Remove duplicates 
# Pipeline #3:
#   sed: sed command (Pipe character is the delimiter)
#     s: substitute
#     ^             : regex for begining of line
#     attachements/ : The substitution text
#   >   : Redirect standard output to a file 
#     "$DEST/tmp/.images-to-copy.txt" (temporary/hidden plain text file)
# 'foo.png' becomes 'attachments/foo.png'

grep -roihP '!\[\K[^]]+\.(png|jpe?g|gif|svg|webp)' "$DEST/tmp" \
  | sort -u \
  | sed "s|^|attachments/|" \
  > "$DEST/tmp/.images-to-copy.txt"

# 5.  Pull in linked images
# Copy the files listed in the .images-to-copy.txt file from the vault to the workspace temp directory.
# rsync: Though a synchronization command, it copies just the files and directories needed from the vault
#        to the workspace temp directory, preserving file attributes so that Git sees them as an existing
#        file, not a new one
#   -a           : Archive mode.  Recursively syncs directories, preserving sym links, modification times, groups,
#                 ownership, and permissions
#   --files-from : Read the list of image files from '.images-to-copy.txt'
#   [SRC]        : Source directory, which is the vault root directory
#   [DEST]       : Destination directory. which is the workspace temp directory
src="$VAULT/"                     # /d/Learning/Obsidian/JimsVault/
dst="$DEST/tmp/"                  # /d/Learning/TagTrek-gh/tmp/
list="$DEST/tmp/.images-to-copy.txt"
rsync -a --files-from="$list" "$src" "$dst"

# 6. Move fresh files into the repo root and clean up tmp
cp -R "$DEST/tmp/"* "$DEST/"        # or: cp -a "$DEST/tmp/." "$DEST/"
rm -rf "$DEST/tmp"

# 7. Replace repo with the workspace temp contents.
#
# Change to the "$DEST" directory and stage *all* additions, modifications, and deletions in one shot.
cd "$DEST"
git add .

# Commit and push only when there are changes
#   git diff --quiet                      : Exit code 0 (considered true) if the Git index matches the working tree.
#   (else)
#   git commit -m "export $(date +%F_%T)" : Commits the staged changes with a message containing a timestamp
#     $(date +%F_%T)                      : Command substitution that runs the 'date' command and an ISO-8601 timestamp
#       +                                 : Signals that everything which follows is a date-time format template
#       %F                                : ISO-8601 full calendar date, e.g. '2025-06-29'
#       _                                 : String literal (underscore)
#       %T                                : 24-hour time, HH:MM:SS, e.g. '18:00:00'
#   &&                                    : If the commit returns exit status 0
#   git push                              : Pushes the changes to the remote repository           
if git diff --cached --quiet; then
  echo "No unstaged changes."
else 
  echo "There are unstaged changes."
  git commit -m "export $(date +%F_%T)" && git push
fi

echo "Export complete ✔︎"
