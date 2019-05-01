#!/bin/bash

set -e

BRANCH_MASTER="master"
YELLOW='\033[0;33m'
CO='\033[0m'

if [[ $(git rev-parse --abbrev-ref HEAD) == $BRANCH_MASTER ]];
then
    printf "\n$YELLOW!!!WARNING!!! Now you are working on the master branch.\n$CO"
    exec < /dev/tty
    while :
    do
        read -p "Are you really want to continue?  [y/n] " answer
        case "$answer" in
            y|yes)
                echo "Commited successfully.\n"
                exit 0
                ;;
            n|no)
                echo "Commit was canceled."
                exit 1
                ;;
            *)
                echo "Enter something y|yes or n|no."
                ;;
        esac
    done
fi
