#!/bin/bash

# Check for git installation
if ! command -v git &>/dev/null; then
    echo "Git is not installed. Please install Git and rerun the script."
    exit 1
fi

read -p "Enter your Git username: " username
read -p "Enter your Git email: " email

git config --global user.name "$username"
git config --global user.email "$email"

# Display message about the aliases being added
echo "Adding the following Git aliases:"
echo "co         : checkout"
echo "s          : status"
echo "undo       : reset HEAD~1 --soft (Move last commit to staging)"
echo "lsalias    : config --get-regexp alias (List all Git aliases)"
echo "cm         : commit -s -m (Sign-off commit with message)"
echo "br         : branch"
echo "sq         : rebase -i (Interactive rebase, e.g., HEAD~3)"
echo "filediff   : diff --name-only (Show filenames of changes)"
echo "brdorigin  : push --delete origin (Delete remote branch)"
echo "l          : log --oneline -n 12 --graph --all (Compact commit log)"
echo "dt         : difftool --dir-diff"
echo "listconfig : config --list (List all Git configurations)"

# Setting up Git aliases
git config --global alias.co "checkout"
git config --global alias.s "status"
git config --global alias.undo "reset HEAD~1 --soft"
git config --global alias.lsalias "config --get-regexp alias"
git config --global alias.cm "commit -s -m"
git config --global alias.br "branch"
git config --global alias.sq "rebase -i"
git config --global alias.filediff "diff --name-only"
git config --global alias.brdorigin "push --delete origin"
git config --global alias.l "log --oneline -n 12 --graph --all"
git config --global alias.dt "difftool --dir-diff"
git config --global alias.lb "log --oneline --graph"
git config --global alias.rs "restore"
git config --global alias.rss "restore --staged"
git config --global alias.listconfig "config --list"

echo "Git aliases have been successfully added!"