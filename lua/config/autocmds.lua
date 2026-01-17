vim.api.nvim_create_autocmd('FileType', {
  pattern = 'text',
  callback = function()
    vim.opt_local.textwidth = 85
  end,
})
