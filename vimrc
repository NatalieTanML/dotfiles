call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

call plug#end()

" vim settings
set noerrorbells
set number
set encoding=utf-8
set linebreak
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set backspace=indent,eol,start
set backup
set backupdir=~/.backup

" abbreviations
iabbrev psvm public static void main(String[] args) {<CR>}
iabbrev syso System.out.println("");
iabbrev syse System.err.println("");

" autocomplete brackets and braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<Space> {  }<left><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" color scheme
if (has("termguicolors"))
  set termguicolors
endif

let g:onedark_termcolors=16
let g:airline_powerline_fonts=1
let g:airline_theme='onedark'

syntax on
colorscheme onedark 

hi NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi Visual ctermbg=DarkGrey ctermfg=NONE
hi StatusLine guibg=NONE ctermbg=NONE
hi StatusLineNC guibg=NONE ctermbg=NONE
set colorcolumn=80,100
hi ColorColumn ctermbg=8 guibg=lightgrey

