return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "rose-pine/neovim",
  },

  opts = {
    preview = {
      icon_provider = "devicons",
      modes = { "n", "no", "i", "c", "x" },
      hybrid_modes = { "i", "x" },
    },
    latex = {
      enable = false,
    },
  },
}
