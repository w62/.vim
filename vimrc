" Disable compatibiltiy with vi which can cause unexpected issues.
set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
set relativenumber
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab

set nobackup
set showcmd
set showmode
set showmatch
set wildmenu
set wildmode=list:longest

set clipboard=unnamed
set mouse=a
set ttymouse=xterm2
set laststatus=2
let g:rustfmt_autosave = 1
set colorcolumn=81
set whichwrap+=<,>,[,],h,l"
set iskeyword+==
set spell spelllang=en_us
colorscheme koehler


" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree'

call plug#end()

" Plugin code goes here.

" MAPPINGS
" Mappings code goes here.
nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <leader>t :echo 'test leader'<cr>
inoremap jj <esc>

" 

" VIMSCRIPT
" This will enable code folding.
" Use the marker method of folding.

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.
autocmd BufRead *.rs :echo 'hello Rust'
autocmd BufRead *.c :echo 'hello C'

" STATUS LINE
" Status bar code goes here.
