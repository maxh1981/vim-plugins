#!/bin/sh

set -e

TEMPDIR=$(mktemp -d)

cd "$TEMPDIR"
git clone https://github.com/editorconfig/editorconfig-vim.git
cd editorconfig-vim
./mkzip.sh
cd "$HOME/.vim"
unzip "$TEMPDIR/editorconfig-vim/editorconfig-vim-.zip"
rm -rf "$TEMPDIR"
