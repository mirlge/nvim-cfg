local trouble = require("trouble")
trouble.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

vim.keymap.set("n", "<Leader>lt", trouble.toggle, { desc = "Toggle Trouble" }) --vim.cmd.TroubleToggle)
