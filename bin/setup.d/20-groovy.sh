#!/bin/sh

set -e

mkdir -p "$HOME/.vim/syntax"
curl http://www.vim.org/scripts/download_script.php?src_id=2926 > "$HOME/.vim/syntax/groovy.vim"

cat > "$HOME/.vim/filetype.vim" <<EOF
au BufNewFile,BufRead *.groovy setf groovy
au BufNewFile,BufRead Jenkinsfile setf groovy
EOF

cat > "$HOME/.vim/scripts.vim" <<EOF
if did_filetype()
  finish
endif

if getline(1) =~ '^#!.*[/\\]groovy\>'
  setf groovy
endif
EOF
