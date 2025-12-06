set nocompatible
set noswapfile
set backspace=indent,eol,start
set autoindent
set incsearch

let mapleader=" "
set shell=~/.local/bin/nish

filetype indent on
filetype plugin indent on

autocmd FileType text setlocal textwidth=78
syntax enable
set background=dark
set number
set relativenumber
colorscheme industry

nnoremap ss :split<cr><c-w>j
nnoremap sv :vsplit<cr><c-w>l
nnoremap sh <c-w>h
nnoremap sj <c-w>j
nnoremap sk <c-w>k
nnoremap sl <c-w>l

command! Vact call s:ActivateVenv()

function! s:ActivateVenv()
  let project_name = fnamemodify(getcwd(), ':t')
  let venv_path = expand('~/.venvs/' . project_name . '/bin/python3')
  
  if filereadable(venv_path)
    let g:python3_host_prog = venv_path
    let g:venv_python = venv_path
    echo "Activated venv: " . venv_path
  else
    echo "No venv found at: " . venv_path
  endif
endfunction
