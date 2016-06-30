#!/bin/sh

set -e

cd "$HOME/.vim/bundle"
git clone https://github.com/plasticboy/vim-markdown.git

# required to use `:TableFormat`
git clone https://github.com/godlygeek/tabular.git

echo "let g:vim_markdown_folding_disabled=1" >> ~/.vimrc
