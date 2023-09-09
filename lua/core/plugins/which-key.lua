vim.o.timeout = true
vim.o.timeoutlen = 300

local wk = require("which-key")
wk.register({
  f = {
    name = "File",
    h = { name = "Harpoon" },
  },
  b = { name = "Buffer" },
  t = { name = "Neorg TODO" },
  h = { name = "Help" },
  g = { name = "Git" },
  k = { name = "Keymap" },
  l = {
    name = "LSP",
    c = { name = "Code" }
  },
  d = { name = "DAP" },
  o = {
    name = "(Ne)org",
    i = { name = "org insert" },
    x = { name = "org clock" }
  },
  s = { name = "Session" },
  S = { name = "Flash" },
}, { prefix = "<Leader>" })

wk.register({
  r = {
    name = "Refactor",
    r = "Smart rename",
  },
}, { prefix = "g" })
