#!/bin/sh

set -e

mkdir -p "$HOME/.vim/bundle"
cd "$HOME/.vim/bundle"
git clone https://github.com/scrooloose/nerdtree.git
