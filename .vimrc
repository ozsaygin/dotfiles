filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
set rtp+=/usr/local/opt/fzf
set backspace=2
set mouse=a
set nocompatible
set number
set nopaste
set  t_Co=256
syntax on


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
" Plug 'klen/python-mode'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
" color schemes
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'yuttie/hydrangea-vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'AlessandroYorba/Despacio'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'

call plug#end()

colorscheme molokai

" ctrlp mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" pymode python3 syntax
let g:pymode_python = 'python3'

" tagbar
"  nmap <F8> :TagbarToggle<CR>
