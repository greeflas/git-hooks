#!/bin/bash

if [[ ! -d vendor/friendsofphp/php-cs-fixer ]];
then
    echo "PHP-CS-Fixer is not installed! You can install package with following command"
    echo "composer require --dev friendsofphp/php-cs-fixer"
    exit 1
fi

vendor/bin/php-cs-fixer fix --diff
