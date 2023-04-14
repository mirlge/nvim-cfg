vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.norg" },
  callback = function()
    vim.keymap.set("n", "<Leader>ot", function() vim.cmd.Neorg("tangle", "current-file") end,
      { desc = "Tangle the current file" })
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.norg" },
  callback = function() vim.cmd.Neorg("tangle", "current-file") end,
})
