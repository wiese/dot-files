#!/usr/bin/env bash

alias composer='echo "composer via docker via alias" && docker run -it --rm --user $(id -u):$(id -g) -v ~/.composer:/tmp -v $(pwd):/app docker.io/composer'
alias php='echo "PHP 7.2 via docker via alias" && docker run -it --rm --user $(id -u):$(id -g) -v $(pwd):/usr/src/myapp -w /usr/src/myapp php:7.2-cli'
alias phpstan='echo "phpstan via docker via alias" && docker run -t --rm --user $(id -u):$(id -g) -v $(pwd):/app:ro phpstan/phpstan:0.8'
alias ansible-lint='echo "ansible-lint via docker via alias" && docker run -t --rm --user $(id -u):$(id -g) -v $(pwd):/app:ro -v ~/.ansible:/.ansible -w /app particlekit/ansible-lint ansible-lint'

ffmpegdownload() {
    ffmpeg -i "$1" -c copy "$2"
}

blubber() {
    curl -s --data-binary "@$1" "https://tools.wmflabs.org/blubber/$2"
}

pdfmerge() {
    NEWPDF=`mktemp --suffix=.pdf`
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dAutoRotatePages=/None -sOutputFile=$NEWPDF "$@"
    echo "Find your merged PDF at $NEWPDF"
}

