-- Window splits
vim.keymap.set('n', 'ss', ':split<cr><c-w>j', { silent = true })
vim.keymap.set('n', 'sv', ':vsplit<cr><c-w>l', { silent = true })

-- Window navigation
vim.keymap.set('n', 'sh', '<c-w>h', { silent = true })
vim.keymap.set('n', 'sj', '<c-w>j', { silent = true })
vim.keymap.set('n', 'sk', '<c-w>k', { silent = true })
vim.keymap.set('n', 'sl', '<c-w>l', { silent = true })

-- Buffer navigation
vim.keymap.set('n', '<leader>p', ':bprev<cr>', { silent = true })
vim.keymap.set('n', '<leader>n', ':bnext<cr>', { silent = true })
vim.keymap.set('n', '<leader>D', ':bd<cr>', { silent = true })

-- Quickfix
vim.keymap.set('n', '<leader>b', ':cprev<cr>', { silent = true })
vim.keymap.set('n', '<leader>f', ':cnext<cr>', { silent = true })
vim.keymap.set('n', '<leader>co', ':copen<cr>', { silent = true })
vim.keymap.set('n', '<leader>cc', ':cclose<cr>', { silent = true })

-- Window/file
vim.keymap.set('n', '<leader>c', ':close<cr>', { silent = true })
vim.keymap.set('n', '<leader>e', '<cmd>Telescope find_files<cr>', { silent = true })
