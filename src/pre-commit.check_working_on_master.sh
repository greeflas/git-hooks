#!/bin/bash

set -e

BRANCH_MASTER="master";

if [[ $(git rev-parse --abbrev-ref HEAD) == $BRANCH_MASTER ]];
then
    echo "!!!WARNING!!! Now you working on the master branch."
    exec < /dev/tty
    while :
    do
        read -p "Are you really want to continue?  [y/n] " answer
        case "$answer" in
            y|yes)
                echo -e  "Commit successful."
                exit 0
                ;;
            n|no)
                echo -e "Commit has failed."
                exit 1
                ;;
            *)
                echo "Enter something y|yes or n|no."
                ;;
        esac
    done
fi
