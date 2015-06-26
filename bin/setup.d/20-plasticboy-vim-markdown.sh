#!/bin/sh

set -e

cd "$HOME/.vim/bundle"
git clone https://github.com/plasticboy/vim-markdown.git

echo "let g:vim_markdown_folding_disabled=1" >> ~/.vimrc
