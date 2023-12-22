local augroup = vim.api.nvim_create_augroup('UserLspConfig', {})

vim.api.nvim_create_autocmd('BufWritePre', {
  group = augroup,
  desc = 'Format buffer',
  callback = function()
    vim.lsp.buf.format()
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = augroup,
  desc = 'Lsp setup',
  callback = function(ev)
    --vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Declaration" })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = "Definition" })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = "Hover" })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Implementation" })
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Signature help" })
    vim.keymap.set('n', 'g<A-d>', vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Type definition" })
    vim.keymap.set('n', '<Leader>lrr', vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
    vim.keymap.set({ 'n', 'v' }, '<space>lca', vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action" })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = "References" })
    vim.keymap.set('n', '<space>lf', function()
      vim.lsp.buf.format { async = true }
    end, { buffer = ev.buf, desc = "Format" })
  end,
})
