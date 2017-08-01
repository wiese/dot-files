#!/usr/bin/env bash

alias composer="echo 'composer via docker via alias' && docker run -it --rm --user $(id -u):$(id -g) -v ~/.composer:/composer -v $(pwd):/app docker.io/composer"

