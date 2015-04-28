#!/bin/sh

set -e

TEMPDIR=$(mktemp -d)
VOOM=VOoM-5.1

cd "$TEMPDIR"
curl -LSso "$VOOM.zip" http://www.vim.org/scripts/download_script.php?src_id=22082
unzip "$VOOM.zip"
rsync -a "$VOOM/autoload" "$HOME/.vim"
rsync -a "$VOOM/doc" "$HOME/.vim"
rsync -a "$VOOM/plugin" "$HOME/.vim"
cd /
rm -rf "$TEMPDIR"
