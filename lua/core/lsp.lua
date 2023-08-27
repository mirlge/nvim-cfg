vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(client, bufnr)
    vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
    vim.keymap.set("n", "<Leader>lca", vim.lsp.buf.code_action, { desc = "Code action" })

    vim.keymap.set("n", "K", vim.lsp.buf.hover(), { desc = "LSP hover" })
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Format buffer',
  callback = function()
    vim.lsp.buf.format()
  end,
})
