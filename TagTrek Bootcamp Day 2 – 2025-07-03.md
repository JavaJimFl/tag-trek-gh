---
type: daily
project: tag-trek
date: 2025-07-03
publish: true
---
# TagTrek Bootcamp Day 2 – 2025-07-03

## 🎯 Goals
- [ ] 🐣 UI
    - [x] Install VS Code ✅ 2025-07-03
    - [x] Launch VS Code → Open Folder
        - [x]  Open  `tag-trek-ui-react` as a single folder into VS Code ✅ 2025-07-03
    - [x] Install VS Code extensions ✅ 2025-07-03
        - [x] ESLint (dbaeumer.vscode-eslint) ✅ 2025-07-03
        - [x] Prettier (esbenp.prettier-vscode) ✅ 2025-07-03
        - [x] (Optional) “JavaScript & TypeScript Nightly” for latest IntelliSense. ✅ 2025-07-03
    - [x] Add VS Code configuration options. ✅ 2025-07-03
        - [x] `files: Eol` ➡️ LF (for cross-platform compatibility). ✅ 2025-07-03
        - [x] `Editor: Format on save` ➡️ true. ✅ 2025-07-03
    - [ ] JS Course
        - [ ] JS Where To
        - [ ] JS Output
        - [ ] JS Statements
        - [ ] JS Syntax
        - [ ] JS Comments
    - [x] Create TagTrek UI source code folder ✅ 2025-07-03
    - [x] Create UI code repository ✅ 2025-07-03
    - [x] Initialize local tag-trek-ui repo ✅ 2025-07-03
    - [x] Manually Create `README.md` and `.gitignore` ✅ 2025-07-03
    - [x] Commit and push local UI changes ✅ 2025-07-03
    - [x] Smoke tests ✅ 2025-07-03
        - [x] Check git  history for clean root: `git log --oneline --graph --all` ✅ 2025-07-03
        - [x] VS Code _Source Control_ sidebar shows the `main` branch ✅ 2025-07-03
- [x] 🌳 Middleware : ✅ 2025-07-03
    - [x] Watch Oracle module, "Introduction to Java Basics" ✅ 2025-07-03
    - [x] Rename TagTrek API source code folder ✅ 2025-07-03
    - [x] Create middleware code repository ✅ 2025-07-03
    - [x] Initialize local tag-trek-api repo ✅ 2025-07-03
    - [x] Use `npx` to create a Java `.gitignore` ✅ 2025-07-03
    - [x] Commit and push local API changes ✅ 2025-07-03
    - [x] Create IntelliJ TagTrek run configuration and start the app ✅ 2025-07-03
    - [x] Smoke tests ✅ 2025-07-03
        - [x] API builds: `cd tag-trek-api && ./mvnw verify` ✅ 2025-07-03
        - [x] Application starts:" `./mvnw spring-boot:run` ✅ 2025-07-03
            - [x] Check actuator: http://localhost:8080/actuator/health ✅ 2025-07-03
        - [x] Check git  history for clean root: `git log --oneline --graph --all` ✅ 2025-07-03
- [ ] ⚙️ DevOps
    - [x] Confirm Docker 12GB limit. ✅ 2025-07-03
    - [x] Successfully run `hello-world` container `docker run hello-world`. ✅ 2025-07-03
    - [x] Run Postgres container with environment variables ("-e"). ✅ 2025-07-03
    - [ ] Verify connection via `psql`.
    - [x] Draft `docker-compose.yml` file with only `db` service. ✅ 2025-07-03

## 🐣 UI Track
- The "JavaScript and TypeScript Nightly" VS Code plugin appears to be installed by default.
- I had to rename the GitHub repository to `tag-trek-ui-react` in anticipation of an Angular version.
- Clean repo output:
```bash
Jim@Burner MSYS /d/source/tag-trek-ui-react
$ git log --oneline --graph --all
* 21b5779 (HEAD -> main, origin/main, origin/HEAD) chore: init empty React UI repo
* 50af2f1 Initial commit
```

## 🌳 Middleware Track
- Command that uses `npx` to create a `.gitignore` file if an existing one can't be copied from another location, then appends an entry to it (`/target`)
```bash
$ cp ../tag-trek/.gitignore . 2>/dev/null || (npx gitignore java > .gitignore && echo "/target" >> .gitignore)
```
 Note that the file copy error is swallowed by piping stderr (2) to `/dev/null`
- Clean repo output:
```bash
Jim@Burner MSYS /d/source/tag-trek-api
$ git log --oneline --graph --all
* e53e188 (HEAD -> main, origin/main, origin/HEAD) chore: stop tracking .idea folder
* 2a50fd6 chore: migrate Spring API skeleton
* 23678e6 Initial commit
```
 

## ⚙️ DevOps Track
- Docker 12GB limit is in ~/.wslconfig:
```
[wsl2]
# No spaces
memory=12GB
processors=8
```


## 🧩 Topic notes
- [Git 2.50.0.windows.1 - Stop tracking folders or files in Git](Git%202.50.0.windows.1%20-%20Stop%20tracking%20folders%20or%20files%20in%20Git.md)
- [Intellij Community - Spring Boot Run Configuration](Intellij%20Community%20-%20Spring%20Boot%20Run%20Configuration.md)
- [Git Various - Rename local and remote Git repository](Git%20Various%20-%20Rename%20local%20and%20remote%20Git%20repository.md)
- [Java Ecosystem](Java%20Ecosystem.md)
- [Java Code Structures](Java%20Code%20Structures.md)
- [Java Micro-Profile Edition Overview](Java%20Micro-Profile%20Edition%20Overview.md)

## 🔍 Insights / Questions
- 

## 🚀 Next actions
- [ ] Create note for checking the Git log.
- [ ] Tomorrow: continue JS Variables, let/const, arithmetic

## Reflection
Biggest win – IDEs linked to the right repos.