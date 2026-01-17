return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_config = { prompt_position = 'top' },
        sorting_strategy = 'ascending',
      },
    })
    
    -- Keymaps
    local builtin = require('telescope.builtin')
    -- Find files is setup as '<leader>e' on config/keymaps.lua
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help' })
  end,
}
