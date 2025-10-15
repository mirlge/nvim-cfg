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
    },
    checkboxes = {
      default = " ",
    },
  },
}
