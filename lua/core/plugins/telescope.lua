return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  -- or branch = "0.1.4"
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      mappings = {
        i = { ["<C-t>"] = function() require("trouble.providers.telescope").open_with_trouble() end },
        n = { ["<C-t>"] = function() require("trouble.providers.telescope").open_with_trouble() end },
      },
    },
  },
  keys = {
    { "<Leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<Leader>fg", function() require("telescope.builtin").live_grep() end,  desc = "Live grep" },
    { "<Leader>bf", function() require("telescope.builtin").buffers() end,    desc = "Find buffers" },
    { "<Leader>hf", function() require("telescope.builtin").help_tags() end,  desc = "Find help tags" },
    {
      "<Leader>gf",
      function() require("telescope.builtin").git_files() end,
      desc =
      "Find files in git tree"
    },
    { "<Leader>gb", function() require("telescope.builtin").git_branches() end, desc = "Find branches" },
    { "<Leader>gc", function() require("telescope.builtin").git_commits() end,  desc = "Inspect commits" },
    { "<Leader>kf", function() require("telescope.builtin").keymaps() end,      desc = "Find keymaps" },
    {
      "<Leader>bz",
      function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      desc =
      "Find text in current buffer"
    },
  },
}
