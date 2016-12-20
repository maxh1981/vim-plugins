#!/bin/sh

echo 'set number' >> "$HOME/.vimrc"
echo 'set bg=dark' >> "$HOME/.vimrc"
echo 'noremap <F12> <Esc>:syntax sync fromstart<CR>' >> "$HOME/.vimrc"
echo 'inoremap <F12> <C-o>:syntax sync fromstart<CR>' >> "$HOME/.vimrc"
echo 'set statusline=%F%=%c,%l/%L' >> "$HOME/.vimrc"
echo 'set laststatus=2' >> "$HOME/.vimrc"
