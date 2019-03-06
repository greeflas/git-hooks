#!/bin/bash

set -e

base_commit_hash=$(git log origin/master -n 1 --format=%H)
parent_commit_hash=$(git log -n 1 --format=%H)
ticket=$(git rev-parse --abbrev-ref HEAD | cut -f 1,2 -d '-')

if [[ $base_commit_hash == $parent_commit_hash ]];
then
    original_message=$(cat "$1")
    echo "[$ticket] $original_message" > "$1"
fi
