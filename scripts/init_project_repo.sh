#!/bin/bash

cd ../wp

inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

if [ "$inside_git_repo" ]; then
    echo "inside git repo"
    # pull master branch
else
    sudo git init
    sudo git add .
    sudo git commit -m 'initial commit'
fi


