local plugins = {
  'folke/lazy.nvim',
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require "nvim-treesitter.install".update { with_sync = true }
    end,
    config = function()
      require "core.plugins.treesitter"
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function() require "core.plugins.rose-pine" end,
    priority = 100,
  },
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {},
  },
  {
    "nvim-treesitter/nvim-tree-docs",
    dependencies = "nvim-treesitter/nvim-treesitter",
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
      {
        'hrsh7th/nvim-cmp',
        opts = {
          preselect = 'item',
          completion = {
            completeopt = 'menu,menuone,noinsert'
          },
          sources = {
            { name = "nvim_lsp" },
            { name = "neorg" },
            { name = "buffer" },
            { name = "luasnip" },
            { name = "path" },
            { name = "orgmode" },
            { name = "emoji" },
            { name = "calc" },
            { name = "git" },
          },
        },
      },                          -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-emoji' },
      { 'hrsh7th/cmp-calc' },
      {
        'petertriho/cmp-git',
        opts = {},
      },
    },
    config = function()
      require "core.plugins.lsp"
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or branch = '0.1.1'
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require "core.plugins.telescope"
    end,
  },
  {
    'theprimeagen/harpoon',
    config = function()
      require "core.plugins.harpoon"
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      require "core.plugins.undotree"
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require "core.plugins.trouble"
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    config = function()
      require "core.plugins.gitsigns"
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    opts = {
      sections = {
        lualine_a = { {
          'buffers',
          filetype_names = {
            NvimTree = 'File Explorer'
          },
          use_mode_colors = true,
        } },
        lualine_c = {},
        lualine_y = { 'filesize' }
      },
    },
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require "core.plugins.Comment" --('Comment').setup()
    end,
  },
  {
    'luukvbaal/statuscol.nvim',
    config = function()
      require "core.plugins.statuscol"
    end,
  },
  {
    "folke/neoconf.nvim",
    opts = {},
    priority = 99,
  },
  {
    'folke/neodev.nvim',
    config = function()
      require "core.plugins.neodev"
    end,
  },
  {
    'andweeb/presence.nvim',
    config = function()
      require "core.plugins.presence"
    end
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require "core.plugins.project"
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require "core.plugins.autopairs"
    end
  },
  {
    'TimUntersberger/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require "core.plugins.neogit"
    end,
  },
  'RRethy/vim-illuminate',
  { 'edluffy/hologram.nvim', opts = { auto_display = true } },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.2',
    opts = {
      -- Applies Chip's personal settings to every machine you connect to
      --
      -- 1. Ensures that distant servers terminate with no connections
      -- 2. Provides navigation bindings for remote directories
      -- 3. Provides keybinding to jump into a remote file's parent directory
      --['*'] = require('distant.settings').chip_default()
    },
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {},
  },
  {
    "folke/which-key.nvim",
    config = function()
      require "core.plugins.which-key"
    end,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      show_current_context = true,
      show_current_context_start = true,
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require "core.plugins.null-ls"
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    opts = {},
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "core.plugins.dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {},
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Nextcloud/norg/notes",
            },
          },
        },
        ["core.integrations.treesitter"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          }
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  "ThePrimeagen/vim-be-good",
  {
    'nvim-orgmode/orgmode',
    opts = {
      org_agenda_files = { "~/Nextcloud/org/*" },
      org_default_notes_file = "~/Nextcloud/org/refile.org",
    },
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require "core.plugins.notify"
    end,
  },
  {
    "dmmulroy/tsc.nvim",
    dependencies = { "rcarriga/nvim-notify" },
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {
      -- Configuration here, or leave empty to use defaults
    },
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    'simrat39/rust-tools.nvim',
    opts = {
      server = {
        on_attach = function(_, bufnr)
          local rt = require("rust-tools")

          -- Hover actions
          vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
    },
    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim',
      'mfussenegger/nvim-dap',
    },
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


-- More plugin configuration
require "core.plugins.null-ls"
require "core.plugins.norg"
require "core.plugins.toggleterm"
require "core.plugins.orgmode"
require "core.plugins.oil"
