#!/bin/bash

set -e

composer -v > /dev/null 2>&1
COMPOSER=$?

if [[ $COMPOSER -ne 0 ]]; then
    echo "Composer is not installed!"
    exit 1
fi

composer install
