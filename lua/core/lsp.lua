vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Format buffer',
  callback = function()
    vim.lsp.buf.format()
  end,
})
