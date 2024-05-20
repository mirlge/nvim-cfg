return {
  "lewis6991/gitsigns.nvim",
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  opts = {},
  lazy = false,
  keys = {
    {
      mode = { "n", "x" },
      "<Leader>ga",
      function()
        vim.cmd.Gitsigns("stage_hunk")
      end,
      desc = "Stage hunk",
    },
  },
}
