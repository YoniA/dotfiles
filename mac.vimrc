syntax on
set number
set tabstop=2

set path+=**

" support true-color terminal emulators
set termguicolors

" fix backspace behavior in macOS
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
"call plug#begin()

Plug 'bluz71/vim-nightfly-guicolors'
Plug 'overcache/NeoSolarized'
Plug 'preservim/nerdtree'
Plug 'bluz71/vim-moonfly-colors'
call plug#end()


set background=dark
colorscheme moonfly

"colorscheme NeoSolarized
let g:neosolarized_contrast = "low"
