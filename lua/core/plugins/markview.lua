return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "rose-pine/neovim",
  },
  config = function(_, opts)
    require("markview").setup(opts.main)
    require("markview.extras.checkboxes").setup(opts.checkboxes)
    require("markview.extras.editor").setup(opts.editor)

    vim.api.nvim_create_autocmd("User", {
      pattern = "MarkviewAttach",
      callback = function(_)
        vim.keymap.set({ "n", "x" }, "<C-Space>", "<cmd>Checkbox interactive<CR>", { desc = "Toggle checkbox" })
      end,
    })
  end,

  opts = {
    main = {
      preview = {
        icon_provider = "devicons",
        modes = { "n", "no", "i", "c", "x" },
        hybrid_modes = { "i", "x" },
      },
      latex = {
        enable = false,
      },
      markdown = {
        headings = { enable = false },
      },
    },
    checkboxes = {
      default = " ",
    },
  },
}
