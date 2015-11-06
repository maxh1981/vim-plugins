#!/bin/sh

set -e

cd "$HOME/.vim/bundle"
git clone https://github.com/scrooloose/syntastic.git

echo "let g:syntastic_cpp_check_header = 1" >> ~/.vimrc
