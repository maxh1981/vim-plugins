#!/bin/sh

set -e

TEMPDIR=$(mktemp -d -p $PWD)

cd "$TEMPDIR"
wget https://github.com/editorconfig/editorconfig-vim/archive/master.zip
cd "$HOME/.vim"
unzip "$TEMPDIR/master.zip"
rm -rf "$TEMPDIR"
