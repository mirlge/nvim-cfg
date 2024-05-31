return {
  "folke/trouble.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  cmd = "Trouble",
  keys = {
    {
      "<Leader>Tt",
      function()
        require("trouble").toggle("diagnostics")
      end,
      desc = "Toggle Trouble",
    },
    {
      "<Leader>Tq",
      function()
        require("trouble").toggle("quickfix")
      end,
      desc = "Toggle Trouble in quickfix mode",
    },
    {
      "gR",
      function()
        require("trouble").toggle("lsp_references")
      end,
      desc = "LSP references",
    },
    {
      "<Leader>Tn",
      function()
        require("trouble").next({ skip_groups = true, jump = true })
      end,
      desc = "Next",
    },
    {
      "<Leader>Tp",
      function()
        require("trouble").prev({ skip_groups = true, jump = true })
      end,
      desc = "Next",
    },
  },
}
