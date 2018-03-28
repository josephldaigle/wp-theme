#!/bin/bash

############################
# Init client project repo
############################
#
# Initialize a git project in the WP install directory.
#

DIR="$(pwd)"
cd ../wp
echo "$(pwd)"

inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

if [ "$inside_git_repo" ]; then
    echo 'inside git repo'

    # configure project
    sudo git config --global user.name "${GIT_NAME}"
    sudo git config --global user.email "${GIT_EMAIL}"
    echo 'git config complete'

    # pull master branch

else
    #init git project
    sudo git init
    echo 'git initialized'

    # configure project
    sudo git config --global user.name "${GIT_NAME}"
    sudo git config --global user.email "${GIT_EMAIL}"
    echo 'git config complete'

    # execute initial commit
    sudo git add .
    sudo git commit -m 'initial commit'
    echo 'project committed'
fi

## return to orig working dir
cd ${DIR}