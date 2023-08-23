vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(client, bufnr)
    vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
    vim.keymap.set("n", "<Leader>lca", vim.lsp.buf.code_action, { desc = "Code action" })
  end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
  desc = 'Format buffer',
  callback = vim.lsp.buf.format,
})
