syntax on

" enable hybrid line numbers
set number
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

" conceal mardown syntax
set conceallevel=2

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
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
call plug#end()


set background=dark
colorscheme moonfly

"colorscheme NeoSolarized
let g:neosolarized_contrast = "low"


" disable markdown folding (vim-markdown plugin)
let g:vim_markdown_folding_disabled = 1


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" capitalize every sentence in a line
function Cap()
  " capitalize first word character in a line
  s/\(^\s*\)\(\w\)/\1\u\2/e

  " capitalize every first word character after a period character
  s/\(\.\s*\)\(\w\)\(\w*\)/\1\u\2\3/ge
endfunction
