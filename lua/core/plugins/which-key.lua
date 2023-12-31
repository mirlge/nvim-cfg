return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.register({
      f = {
        name = "File",
        h = { name = "Harpoon" },
      },
      b = { name = "Buffer" },
      t = { name = "Neorg TODO" },
      T = { name = "Trouble" },
      h = { name = "Help" },
      g = { name = "Git" },
      k = { name = "Keymap" },
      l = {
        name = "LSP",
        c = { name = "Code" },
      },
      d = {
        name = "DAP",
        s = "Step",
      },
      o = {
        name = "(Ne)org",
        i = { name = "org insert" },
        x = { name = "org clock" },
      },
      s = { name = "Session" },
      q = { name = "DB" },
      S = { name = "Flash" },
    }, { prefix = "<Leader>" })

    wk.register({
      r = {
        name = "Refactor",
        r = "Smart rename",
      },
    }, { prefix = "g" })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
