#!/bin/sh

set -e

echo 'set backupdir=~/.vim/backup//' >> "$HOME/.vimrc"
echo 'set directory=~/.vim/swap//' >> "$HOME/.vimrc"
echo 'set undodir=~/.vim/undo//' >> "$HOME/.vimrc"

mkdir -p "$HOME/.vim/backup"
mkdir -p "$HOME/.vim/swap"
mkdir -p "$HOME/.vim/undo"
