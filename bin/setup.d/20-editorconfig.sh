#!/bin/sh

set -e

TEMPDIR=$(mktemp -d -p $PWD)

cd "$TEMPDIR"
git clone https://github.com/maxh1981/editorconfig-vim.git
cd editorconfig-vim
./mkzip.sh
cd "$HOME/.vim"
unzip "$TEMPDIR/editorconfig-vim/editorconfig-vim-.zip"
rm -rf "$TEMPDIR"
