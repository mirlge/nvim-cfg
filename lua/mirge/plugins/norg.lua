vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.norg" },
  callback = function()
    vim.keymap.set("n", "<Leader>ot", function() vim.cmd.Neorg("tangle", "current-file") end,
      { desc = "Tangle the current file" })
    vim.keymap.set("n", "<Leader>om",
      function() vim.cmd.Neorg("keybind", "all", "core.looking-glass.magnify-code-block") end,
      { desc = "Magnify code block" })
  end,
})
