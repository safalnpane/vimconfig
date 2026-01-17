return {
  'nvim-treesitter/nvim-treesitter',
  build = function()
    require('nvim-treesitter.install').update({ with_sync = true })()
  end,
  config = function()
    require('nvim-treesitter.config').setup({
      ensure_installed = { 'python', 'go', 'javascript', 'rust', 'c', 'cpp', 'lua' },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
