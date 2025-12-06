setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

setlocal autoindent
setlocal smartindent
setlocal smarttab

let g:pyindent_open_paren='shiftwidth()'

setlocal textwidth=80
setlocal formatoptions-=o

nnoremap <buffer> <leader>r :execute '!'. get(g:, 'venv_python', 'python3') . ' %'<CR>

