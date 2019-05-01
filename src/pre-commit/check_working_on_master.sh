#!/bin/bash

set -e

BRANCH_MASTER='master'
YELLOW='\033[0;33m'
CO='\033[0m'

current_branch=$(git rev-parse --abbrev-ref HEAD)

if [[ $current_branch == "$BRANCH_MASTER" ]];
then
    printf "\n$%s!!!WARNING!!! Now you are working on the master branch.\n%s" "$YELLOW" "$CO"
    exec < /dev/tty
    while :
    do
        read -pr "Are you really want to continue?  [y/n] " answer
        case "$answer" in
            y|yes)
                printf "Commited successfully.\n"
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
