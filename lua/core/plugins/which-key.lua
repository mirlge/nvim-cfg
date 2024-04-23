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
        h = "Harpoon",
      },
      b = "Buffer",
      t = "Neorg TODO",
      T = "Trouble",
      h = "Help",
      g = "Git",
      k = "Keymap",
      l = {
        name = "LSP",
        c = "Code",
      },
      d = {
        name = "DAP",
        s = "Step",
      },
      o = {
        name = "(Ne)org",
        i = "org insert",
        x = "org clock",
      },
      s = "Session",
      q = "DB",
      S = "Flash",
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
