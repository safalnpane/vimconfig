return {
    'neovim/nvim-lspconfig',
    config = function()
        -- Custom diagnostic signs
        vim.diagnostic.config({
          signs = {
            text = {
              [vim.diagnostic.severity.ERROR] = "✘",
              [vim.diagnostic.severity.WARN] = "▲",
              [vim.diagnostic.severity.HINT] = "⚑",
              [vim.diagnostic.severity.INFO] = "●",
            }
          }
        })
	vim.diagnostic.enable(false)

        -- Python lsp
        vim.lsp.config('pyright', {
            cmd = { 'pyright-langserver', '--stdio' },
            filetypes = { 'python' },
            root_markers = { 'pyproject.toml', 'setup.py', '.git' },
            settings = {},
        })

        vim.lsp.enable('pyright')

        -- Keymaps
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local opts = { buffer = args.buf, silent = true }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

                -- Diagnostics
                vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, opts)
                vim.keymap.set('n', '<leader>dt', function()
                    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
                end, opts)
            end,
        })
    end,
}
