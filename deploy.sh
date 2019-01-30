#!/bin/bash

echo -e "\033[0;32mDeploying new blog...\033[0m"

echo -e "\033[0;32mRunning hugo...\033[0m"
hugo -d ../joshuabragge.github.io

echo -e "\033[0;32mChanging to blog directory...\033[0m"
cd ../joshuabragge.github.io

echo -e "\033[0;32mCommit and push the new build...\033[0m"
git add *
git commit -am "New Blog Build (`date`)"
git push

echo -e "\033[0;32mChange back to hugo-blog...\033[0m"
cd ../blog-git-pages-hugo-source

echo -e "\033[0;32mDeploy complete.\033[0m"
