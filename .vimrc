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
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
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




function! ShowNumberedFileDropdown()
    let current_word = expand('<cword>')
    let file_list = glob('./*', 0, 1)
    let numbered_list = map(copy(file_list), 'v:val =~ "/$" ? v:val : printf("%d: %s", v:key+1, substitute(v:val, "./", "", ""))')
    let selection = inputlist(numbered_list)
    if selection != -1
        let file_number = matchstr(selection, '^\d\+')
        let file_name = file_list[file_number - 1]
        let file_name = substitute(file_name, "./", "", "")
        let enclosed_word = '[' . current_word . ']'
        let combined_text = enclosed_word . '(' . fnameescape(file_name) . ')'
        execute 'normal! ciw' . combined_text
    endif
endfunction

nnoremap md :call ShowNumberedFileDropdown()<CR>
inoremap <C-l> <Esc>:call ShowNumberedFileDropdown()<CR>


" markup preview plugin configuration
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }
