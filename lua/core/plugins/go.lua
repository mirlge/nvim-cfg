return {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
  event = { "CmdlineEnter" },
  ft = { "go", 'gomod' },
  build = function() require("go.install").update_all_sync() end -- if you need to install/update all binaries
}
