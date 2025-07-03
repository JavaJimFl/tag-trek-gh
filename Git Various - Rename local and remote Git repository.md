---
project: tag-trek
technology: Git
version: Various
topicName: Rename local and remote Git repository
status: exploring
date: 2025-07-03
publish: true
---

# Git  Various - Rename local and remote Git repository

Here are the steps to rename both the local and remote Git repositories so they stay in sync.  GitHub is the remote repository vendor.  The example here renames `tag-trek-ui` to `tag-trek-ui-react`.

1. Rename the remote repository.
        1.  Navigate to the `tag-trek-ui` repository on `github.com`.
        2. Click 'Settings' in the top menu.
        3. Change `tag-trek-ui` to `tag-trek-ui-react` in the **Repository Name** field.
        4. Click **Rename** (the new repo name must be available)

GitHub will automatically redirect from the old name, so old links won't break immediately.  Still, let's update the local repos to match.

2. I'm OCD, so I will rename the local folder to match:
```bash
 mv tag-trek-ui tag-trek-ui-react
```
3. Check the current remote:
```bash
# -v = verbose
git remote -v

# returns
origin  https://github.com/JavaJimFl/tag-trek-ui.git (fetch)
origin  https://github.com/JavaJimFl/tag-trek-ui.git (push)
```
4. Update the origin URL:
```bash
git remote set-url origin https://github.com/JavaJimFl/tag-trek-ui-react
```
5. Verify:
```bash
$ git remote -v

# returns
origin  https://github.com/JavaJimFl/tag-trek-ui-react (fetch)
origin  https://github.com/JavaJimFl/tag-trek-ui-react (push)

```

Damn, we're good.