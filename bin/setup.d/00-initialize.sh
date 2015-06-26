#!/bin/sh

set -e

if [ -f "$HOME/.vimrc" ]; then
	mv "$HOME/.vimrc" "$HOME/.vimrc.backup"
fi

if [ -d "$HOME/.vim" ]; then
	if [ -d "$HOME/.vim.backup" ]; then
		rm -rf "$HOME/.vim.backup"
	fi

	mv "$HOME/.vim" "$HOME/.vim.backup"
fi

touch "$HOME/.vimrc"
mkdir "$HOME/.vim"
