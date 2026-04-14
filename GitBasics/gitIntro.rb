=begin

Git:
*Used to track changes in your code.
*Helps you save different versions of your code.
*Works offline, on your own computer.
*You can go back to an earlier version if something breaks.

GitHub:
*A website to store your Git code online.
*Lets you share your code with others.
*Great for working with teams.
*Also useful for backing up your projects.

In short:
*Git = Tracks changes and saves versions (on your computer).
*GitHub = Stores those versions online so others can see, use, or contribute.

Git Commands:

1) git config --global user.name "Albert"

This tells Git:
“Use the name ‘Albert’ when I make a commit.”

2) git config --global user.email "prathape08@gmail.com"

This tells Git:
“Use this email ‘prathape08@gmail.com’ when I make a commit.”

Why it matters:
*When you make changes to code and save them in Git (called a commit), Git needs to know who made those changes.
*These commands help Git attach your name and email to each commit — like a signature.

What does --global mean?
It means:
*“Apply this setting for all my Git projects on this computer.”
*So you don’t need to set your name and email every time you create a new project.

3) git init — What it does:

When you run:
    git init

Git will:

    *Create a hidden folder named .git inside your project directory.
    *This .git folder is where Git stores all tracking information (like commit history, branches, etc.).
    *From this point, Git starts tracking changes in your project — but only if you tell it what to 
     track (using git add and git commit).

4) Git Workflow: Local → Staging → Commit → Remote (Push):

    1. git add
       *git add * — Adds all modified/new files to the staging area.
       *git add <file> — Adds just that file to staging.

    Staging Area: Like a “preparation zone” before saving.

    2. git commit -m "message"
        *Commits (saves) only the files in the staging area.
        *This creates a snapshot (commit) in your local repository.

    Think of this as:
    🔐 "Lock these staged changes with a message — this is one version."

    3. git push
        *Pushes your committed changes to the remote repository (like GitHub).
        *Only changes that are committed will be pushed.
        *So if something is in staging but not committed, it won’t be pushed.

    🔁 Summary (Your Version, Reworded):
    We cannot push directly from local working files to the remote repo.

    Instead, we must:
        *Stage files using git add
        *Commit them using git commit
        *Push them using git push

5) git remote add origin https://github.com/AlbertPrathap/RubyBasics.git
    *This will tell where our remote repo is present and whenever we push our code
     git will push and store our code in that particular remote repo location.
    *So basically it'll establish a connection between local and remote repo.

6) git push -u origin master

    | Part       | Meaning                            |
    | ---------- | ---------------------------------- |
    | `git push` | Push changes to remote             |
    | `-u`       | Set default tracking relationship  |
    | `origin`   | Remote repository (usually GitHub) |
    | `master`   | Branch name (not a folder!)        |

    *Note:Push my local master branch to the remote repository named origin, and create (or update) 
     a branch called master in that remote repo.

    *origin is a nickname (alias) for the remote repository URL
    *Whenever I say origin, I mean this URL: https://github.com/AlbertPrathap/RubyBasics.git."

7) git clone https://github.com/AlbertPrathap/RubyBasics.git

    *This will create a copy of the project present in repo to our local system.

8) git pull origin master
    *This is used to get the latest changes from remote repo and store it to our local repo.

Branching:

1) git branch branchName 
    *Creates a new branch locally, not on GitHub (remote). You still need to push it to GitHub.

2) git checkout branchName
    *This will switch to the branch you specify (if it already exists locally).

3) git checkout -b branchName
    This will:
        *Create a new local branch named branchName
        *Automatically switch to it

| Command                      | What it does                                               |
| ---------------------------- | ---------------------------------------------------------- |
| `git branch branchName`      | Creates a new branch **locally**, but doesn’t switch to it |
| `git checkout branchName`    | Switches to an existing branch                             |
| `git checkout -b branchName` | Creates a new branch **and** switches to it                |
| `git push origin branchName` | Sends the new branch to **GitHub** (remote)                |

Whenever we create a new branch:
*Existing files will be present in both master and all available branches, and those files will be 
 stored in one memory and pointed to by different branches.”

✔️ Correct!
Git is smart under the hood — it doesn't duplicate identical files in memory. If the file is 
unchanged between branches, Git internally points both branches to the same data (blob objects). 
This makes it fast and space-efficient.

“The changes we make in respective branches will be stored in that branch only and won’t affect 
other branches.”

✔️ Exactly!
Changes made in a branch are stored in that branch’s commit history. Other branches will not see 
those changes unless you:
    *Merge them, or
    *Rebase them, or
    *Checkout that branch specifically.

4) git merge branchName (All this will happen locally, to see the changes in remote repo, need to push the code)
    *First we need to be in master branch by using git checkout master
    *Then we need merge the branch we want with master branch by using git merge test
    *So this will merge the test branch with master branch.
=end