#!/bin/bash

############################
# Init client project repo
############################
#
# Initialize a git project in the WP install directory.
#

DIR="$(pwd)"
cd ../wp

inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

# configure project
sudo git config user.name "${GIT_NAME}"
sudo git config user.email "${GIT_EMAIL}"
echo 'git config complete'

if [ "$inside_git_repo" ]; then
    echo 'inside git repo'

    # pull master branch

else
    #init git project
    sudo git init
    echo 'git initialized'

    # execute initial commit
    sudo git add .
    sudo git commit -m 'initial commit'
    echo 'project committed'
fi

## return to orig working dir
cd ${DIR}