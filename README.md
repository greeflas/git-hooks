<p align="center">
    <a href="https://github.com/greeflas/git-hooks" target="_blank">
        <img src="https://github.com/greeflas/git-hooks/blob/master/docs/logo.png" height="300px">
    </a>
    <h1 align="center">Repository of useful Git Hooks scripts for CI</h1>
</p>

* [prepare-commit-msg.ticket-number.sh](src/prepare-commit-msg.ticket-number.sh) - this script adds ticket number to the first commit
of feature branch. It gets ticket number from branch name. Branch name should have following format `EXAMPLE-305-some-feature`.

    For example if first commit is named `Implements some feature` this script will update it with ticket number and it will look like `[EXAMPLE-305] Implements some feature`.

* [pre-commit.php-cs-fixer.sh](src/pre-commit.php-cs-fixer.sh) - this script runs PHP-CS-Fixer before commit for fixing code style.

Installation
------------

1. Pull this repo to some place in your machine

    `$ git clone https://github.com/greeflas/git-hooks.git`

2. Create a symlink for needed script in your project `.git/hooks` directory

    `$ ln -s ~/tools/git-hooks/src/prepare-commit-msg.ticket-number.sh .git/hooks/prepare-commit-msg`

License
-------

[![license](https://img.shields.io/github/license/greeflas/git-hooks.svg)](LICENSE)

This project is released under the terms of the BSD-3-Clause [license](LICENSE).

Copyright (c) 2019, Vladimir Kuprienko
