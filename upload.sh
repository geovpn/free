#!/bin/bash
git clone https://github.com/project-vps/ngopi.git
git config --global user.email "whyproject00@gmail.com"
git config --global user.name "project-vps"
rm -rf .git
git init
git add .
git commit -m init
git branch -M main
git remote add origin https://github.com/project-vps/ngopi.git
git push -f https://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@github.com/project-vps/ngopi.git
