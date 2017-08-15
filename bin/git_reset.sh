#! /bin/bash
# Purpose of this script is to remove all commits from a repository.

if (( $# != 2)); then
    echo "Usage: ./git_reset <github username> <name-of-repository>"
    exit 1
fi


if [ ! -d ".git" ]; then
    echo "No .git directory"
    exit 1
fi

	
rm -rf .git
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:$1/$2.git
git push -u --force origin master
