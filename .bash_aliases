#!/usr/bin/env bash

alias composer="echo 'composer via docker via alias' && docker run -it --rm --user $(id -u):$(id -g) -v ~/.composer:/composer -v $(pwd):/app docker.io/composer"
alias php="echo 'PHP 7.1 via docker via alias' && docker run -t --rm --user $(id -u):$(id -g) -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:7.1-cli"
alias phpstan="echo 'phpstan via docker via alias' && docker run -t --rm --user $(id -u):$(id -g) -v $PWD:/app:ro phpstan/phpstan"

