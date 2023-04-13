vim.o.timeout = true
vim.o.timeoutlen = 300

local wk = require "which-key"
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
wk.register({
  f = {
    name = "File",
    h = { name = "Harpoon" },
  },
  b = { name = "Buffer" },
  t = { name = "Tabs" },
  h = { name = "Help" },
  g = { name = "Git" },
  k = { name = "Keymap" },
  l = { name = "LSP" },
  d = { name = "DAP" },
}, { prefix = "<Leader>" })
