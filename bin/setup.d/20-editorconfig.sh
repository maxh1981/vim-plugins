#!/bin/sh

set -e

TEMPDIR=$(mktemp -d)

cd "$TEMPDIR"
git clone git@bitbucket.org:editorconfig/editorconfig-vim.git
cd editorconfig-vim
./mkzip.sh
cd "$HOME/.vim"
unzip "$TEMPDIR/editorconfig-vim/editorconfig-vim-.zip"
