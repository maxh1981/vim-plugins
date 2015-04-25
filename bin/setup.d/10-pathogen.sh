#!/bin/sh

set -e

mkdir -p "$HOME/.vim/autoload"
mkdir -p "$HOME/.vim/bundle"
curl -LSso "$HOME/.vim/autoload/pathogen.vim" https://tpo.pe/pathogen.vim

echo 'execute pathogen#infect()' >> "$HOME/.vimrc"
