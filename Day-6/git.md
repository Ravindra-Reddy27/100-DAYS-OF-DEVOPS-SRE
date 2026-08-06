# Git Practice

### Git Commands for day-to-day DevOps development :

`git init` - Initializes a new Git repository in the current directory, allowing Git to start tracking the project.

`git status` - Shows the current state of the working directory and staging area.

`git add <file>` - Adds one or more files to the **staging area**, preparing them for the next commit.

Eg:
```bash
git add .           # Add all files and folders in the current repository.
git add index.html  # Add only the index.html file.
```

`git commit -m "message"` - Creates a new commit by saving the staged changes to the local repository with a commit message.

Eg:
```bash
git commit -m "Initial commit"
```

`git log` - Displays the commit history of the repository.

Eg:
```bash
git log
git log --oneline
```

`git diff` - Shows the differences between the working directory and the staging area.

Eg:
```bash
git diff
git diff --staged
```

`git restore <file>` - Discards changes made to a file in the working directory.

Eg:
```bash
git restore index.html
```

`git restore --staged <file>` - Removes a file from the staging area without deleting its changes.

Eg:
```bash
git restore --staged index.html
```

`git rm <file>` - Removes a file from both the working directory and Git tracking.

Eg:
```bash
git rm test.txt
```

`git mv <old> <new>` - Renames or moves a file and stages the change.

Eg:
```bash
git mv app.txt main.txt
```

`git branch` - Lists all local branches in the repository.

Eg:
```bash
git branch
```

`git checkout <branch>` - Switches to an existing branch.

Eg:
```bash
git checkout feature
```

`git switch <branch>` - Switches to an existing branch (recommended alternative to `checkout`).

Eg:
```bash
git switch feature
```

`git switch -c <branch>` - Creates a new branch and switches to it.

Eg:
```bash
git switch -c feature
```

`git merge <branch>` - Merges the specified branch into the current branch.

Eg:
```bash
git merge feature
```

`git remote -v` - Displays the configured remote repositories.

Eg:
```bash
git remote -v
```

`git remote add origin <url>` - Adds a remote repository.

Eg:
```bash
git remote add origin https://github.com/username/repo.git
```

`git push origin <branch>` - Pushes local commits to the remote repository.

Eg:
```bash
git push origin main
```

`git pull origin <branch>` - Fetches and merges the latest changes from the remote repository.

Eg:
```bash
git pull origin main
```

`git clone <url>` - Downloads an existing remote repository to your local machine.

Eg:
```bash
git clone https://github.com/username/repo.git
```