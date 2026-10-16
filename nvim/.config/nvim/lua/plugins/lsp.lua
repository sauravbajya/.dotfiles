vim.pack.add({
  -- Quickstart configs for LSP
  'https://github.com/neovim/nvim-lspconfig',
})


vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }, -- This stops the "undefined global vim" warning
      },
    },
  },
})


vim.lsp.enable('lua_ls')



vim.lsp.enable('gopls')

vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('roslyn_ls')

