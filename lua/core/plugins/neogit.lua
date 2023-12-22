return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {},
  cmd = "Neogit",
  keys = {
    {
      "<Leader>gs",
      function()
        require("neogit").open({ kind = "split" })
      end,
      desc = "Open Neogit",
    },
  },
}
