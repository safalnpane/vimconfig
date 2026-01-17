vim.opt.timeout = true
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 10
vim.opt.timeoutlen = 300

vim.opt.compatible = false
vim.opt.swapfile = false
vim.opt.backspace = { 'indent', 'eol', 'start' }

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.shell = '/bin/zsh'

vim.g.mapleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.background = 'dark'

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.cmd.colorscheme('industry')

vim.opt.formatoptions:remove({ 'o', 'r' })
