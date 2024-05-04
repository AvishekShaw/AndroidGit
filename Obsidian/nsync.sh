#!/bin/bash
SHARED="/data/data/com.termux/files/home/storage/shared"
cd $SHARED/Obsidian-notes

find . -type f \( -name "*.md" -o -name "*.png"  -o -name "*.pdf" \) -print0 | xargs -0 git addgit ls-files --deleted -z | xargs -0 git add

git commit -m "android on $(date)"
git pull origin master
git push origin master
