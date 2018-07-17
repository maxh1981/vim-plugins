set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'editorconfig/editorconfig-vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'groovy.vim'

filetype plugin indent on

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set number
set bg=dark

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

set statusline=%F%=%c,%l/%L
set laststatus=2

map <silent> <C-n> :NERDTreeToggle<CR>

autocmd BufWinEnter * NERDTreeMirror

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

set nofoldenable
