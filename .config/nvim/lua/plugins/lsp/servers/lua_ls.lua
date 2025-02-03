return {
  -- cmd = { ... },
  -- filetypes = { ... },
  -- capabilities = {},
  -- configure lua server (with special settings)
  settings = {
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { 'vim' },
      },
      completion = {
        callSnippet = 'Replace',
      },
    },
  },
}
