#!/bin/sh

set -e

TEMPDIR=$(mktemp -d)

mkdir -p "$HOME/.vim"
curl -LSso "$TEMPDIR/calendar.zip" http://www.vim.org/scripts/download_script.php?src_id=19707
unzip -d "$HOME/.vim" "$TEMPDIR/calendar.zip"
rm -rf "$TEMPDIR"
