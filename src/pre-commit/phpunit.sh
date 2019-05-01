#!/bin/bash

PACKAGE=phpunit/phpunit

if [[ ! -d vendor/$PACKAGE ]];
then
    echo "PHPUnit is not installed! You can install package with following command"
    echo "composer require --dev $PACKAGE"
    exit 1
fi

vendor/bin/phpunit
