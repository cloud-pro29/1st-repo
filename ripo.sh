#!/bin/sh
echo "# 1st-repo" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:cloud-pro29/1st-repo.git
git push -u origin main
devops is great
