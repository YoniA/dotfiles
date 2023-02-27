syntax on

set relativenumber
set hls

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" fix backspace behavior in macOS
set backspace=indent,eol,start

set history=200

" enable spell check
set spell

set path+=**

" support true-color terminal emulators
set termguicolors


" disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>




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


" disable flickering on git bash for Windows
set visualbell
set t_vb=
