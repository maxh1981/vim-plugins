#!/bin/sh

set -e

cd "$HOME/.vim/bundle"
git clone https://github.com/vim-scripts/vimwiki.git

echo 'set nocompatible' >> "$HOME/.vimrc"
echo 'filetype plugin on' >> "$HOME/.vimrc"
echo 'syntax on' >> "$HOME/.vimrc"
