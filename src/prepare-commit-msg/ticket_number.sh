#!/bin/bash

set -e

# Append ticket number to each commit or for first only
EACH_COMMIT=true

base_commit_hash=$(git log origin/master -n 1 --format=%H)
parent_commit_hash=$(git log -n 1 --format=%H)
ticket=$(git rev-parse --abbrev-ref HEAD | cut -f 1,2 -d '-')

if [[ $EACH_COMMIT || $base_commit_hash == "$parent_commit_hash" ]];
then
    original_message=$(cat "$1")

    if [[ $original_message != *$ticket* ]];
    then
        echo "[$ticket] $original_message" > "$1"
    fi
fi
