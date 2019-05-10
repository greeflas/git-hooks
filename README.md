<p align="center">
    <a href="https://github.com/greeflas/git-hooks" target="_blank">
        <img src="https://github.com/greeflas/git-hooks/blob/master/docs/logo.png" height="300px">
    </a>
    <h1 align="center">Useful scripts for Git Hooks</h1>
</p>

[![Build Status](https://travis-ci.org/greeflas/git-hooks.svg?branch=master)](https://travis-ci.org/greeflas/git-hooks)

### prepare-commit-msg

* [ticket_number.sh](src/prepare-commit-msg/ticket_number.sh) - this script adds ticket number to commits
in feature branch. It gets ticket number from branch name. Branch name should have following format `EXAMPLE-305-some-feature`.

    For example if first commit is named `Implements some feature` this script will update it with ticket number and it will look like `[EXAMPLE-305] Implements some feature`.

    Also you can set `EACH_COMMIT` variable to `false` if you want add ticket number only for the first commit.

    > Symlink: ln -s ~/tools/git-hooks/src/prepare-commit-msg/ticket_number.sh .git/hooks/prepare-commit-msg

### pre-commit

* [php_cs_fixer.sh](src/pre-commit/php_cs_fixer.sh) - this script runs PHP-CS-Fixer before commit for fixing code style.

    > Symlink: ln -s ~/tools/git-hooks/src/pre-commit/php_cs_fixer.sh .git/hooks/pre-commit

* [phpunit.sh](src/pre-commit/phpunit.sh) - this script runs PHPUnit before commit for running tests.

    > Symlink: ln -s ~/tools/git-hooks/src/pre-commit/phpunit.sh .git/hooks/pre-commit

* [check_working_on_master.sh](src/pre-commit/check_working_on_master.sh) - this script helps to warn if you make commit on the master branch.

    > Symlink: ln -s ~/tools/git-hooks/src/pre-commit/check_working_on_master.sh .git/hooks/pre-commit

### post-merge

* [composer_install.sh](src/post-merge/composer_install.sh) - this script installs composer packages specified in 
composer.json or composer.lock if it presents after pull or 
merge.

    > Symlink: ln -s ~/tools/git-hooks/src/post-merge/composer_install.sh .git/hooks/post-merge

Installation
------------

1. Pull this repo to some place in your machine

    `$ git clone https://github.com/greeflas/git-hooks.git`

2. Create a symlink for needed script in your project `.git/hooks` directory

    `$ ln -s ~/tools/git-hooks/src/prepare-commit-msg/ticket_number.sh .git/hooks/prepare-commit-msg`

Contributing
------------

For information about contributing please read [CONTRIBUTING.md](CONTRIBUTING.md).

License
-------

[![license](https://img.shields.io/github/license/greeflas/git-hooks.svg)](LICENSE)

This project is released under the terms of the BSD-3-Clause [license](LICENSE).

Copyright (c) 2019, Vladimir Kuprienko
