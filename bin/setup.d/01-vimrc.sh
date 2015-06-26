#!/bin/sh

echo 'set number' >> "$HOME/.vimrc"
echo 'noremap <F12> <Esc>:syntax sync fromstart<CR>' >> "$HOME/.vimrc"
echo 'inoremap <F12> <C-o>:syntax sync fromstart<CR>' >> "$HOME/.vimrc"
