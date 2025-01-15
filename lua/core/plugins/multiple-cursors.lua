return {
  "brenton-leighton/multiple-cursors.nvim",
  branch = "feat_nvim_cmp",
  --version = "*", -- Use the latest tagged version
  opts = {}, -- This causes the plugin setup function to be called
  keys = {
    { "<C-j>",    "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" },      desc = "Add cursor and move down" },
    { "<C-k>",    "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "x" },      desc = "Add cursor and move up" },

    { "<C-Up>",   "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
    { "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

    {
      "<C-LeftMouse>",
      function() vim.cmd.MultipleCursorsMouseAddDelete() end,
      mode = { "n", "i" },
      desc = "Add or remove cursor"
    },

    { "<C-n>",   "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Add cursor and jump to next cword" },
  },
}
