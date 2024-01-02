return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function(_, opts)
    require("telescope").setup(opts)

    local telescope_border = vim.api.nvim_get_hl(0, { name = "TelescopeBorder" })
    vim.api.nvim_set_hl(
      0,
      "TelescopeBorder",
      vim.tbl_extend("force", telescope_border, { fg = telescope_border.bg })
    )
  end,
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-t>"] = function()
            require("trouble.providers.telescope").open_with_trouble()
          end,
        },
        n = {
          ["<C-t>"] = function()
            require("trouble.providers.telescope").open_with_trouble()
          end,
        },
      },
    },
  },
  keys = {
    {
      "<Leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    },
    {
      "<Leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Live grep",
    },
    {
      "<Leader>bf",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<Leader>hf",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "Find help tags",
    },
    {
      "<Leader>gf",
      function()
        require("telescope.builtin").git_files()
      end,
      desc = "Find files in git tree",
    },
    {
      "<Leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Find branches",
    },
    {
      "<Leader>gc",
      function()
        require("telescope.builtin").git_commits()
      end,
      desc = "Inspect commits",
    },
    {
      "<Leader>kf",
      function()
        require("telescope.builtin").keymaps()
      end,
      desc = "Find keymaps",
    },
    {
      "<Leader>bz",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Find text in current buffer",
    },
  },
}
