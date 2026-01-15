set ttimeout
set ttimeoutlen=10
set timeoutlen=300

set nocompatible
set noswapfile
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch

set shell=/bin/zsh

let mapleader=" "
set guifont=LiberationMono-Regular:h13

filetype indent on
filetype plugin indent on

autocmd FileType text setlocal textwidth=78
syntax enable
set background=dark
set number
set relativenumber
colorscheme industry
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'


nnoremap ss :split<cr><c-w>j
nnoremap sv :vsplit<cr><c-w>l
nnoremap sh <c-w>h
nnoremap sj <c-w>j
nnoremap sk <c-w>k
nnoremap sl <c-w>l
nnoremap <leader>p :bprev<cr>
nnoremap <leader>n :bnext<cr>
nnoremap <leader>b :cprev<cr>
nnoremap <leader>f :cnext<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>c :close<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>cc :cclose<cr>
nnoremap <leader>e :e %:p:h<cr>
nnoremap <leader>ss :syntax sync fromstart<cr>
