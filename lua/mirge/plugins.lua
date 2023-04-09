local plugins = {
  'folke/lazy.nvim',
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require "nvim-treesitter.install".update { with_sync = true }
    end,
    config = function()
      require "mirge.plugins.treesitter"
    end,
  },
  'nvim-treesitter/playground',
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function() require "mirge.plugins.rose-pine" end,
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig', -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    },
    config = function()
      require "mirge.plugins.lsp"
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or branch = '0.1.1'
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require "mirge.plugins.telescope"
    end,
  },
  {
    'theprimeagen/harpoon',
    config = function()
      require "mirge.plugins.harpoon"
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      require "mirge.plugins.undotree"
    end
  },
  {
    'tpope/vim-fugitive',
    config = function()
      require "mirge.plugins.fugitive"
    end
  },
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require "mirge.plugins.trouble"
    end,
  },
  'tpope/vim-rhubarb',
  {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    config = function()
      require "mirge.plugins.gitsigns"
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require "mirge.plugins.lualine"
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require "mirge.plugins.Comment" --('Comment').setup()
    end,
  },
  {
    'luukvbaal/statuscol.nvim',
    config = function()
      require "mirge.plugins.statuscol"
    end,
  },
  {
    'folke/neodev.nvim',
    config = function()
      require "mirge.plugins.neodev"
    end,
  },
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins)
