local M = {}

M.plugins = {
  lazy = { 'folke/lazy.nvim' },
  treesitter = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require "nvim-treesitter.install".update { with_sync = true }
    end,
    config = function()
      require "core.plugins.treesitter"
    end,
  },
  rose_pine = {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function() require "core.plugins.rose-pine" end,
    priority = 100,
  },
  treesitter_refactor = {
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  treesitter_context = {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {},
  },
  tree_docs = {
    "nvim-treesitter/nvim-tree-docs",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  lsp_zero = {
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
  },
  telescope = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or branch = '0.1.1'
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        mappings = {
          i = { ["<C-t>"] = function() require "trouble.providers.telescope".open_with_trouble() end },
          n = { ["<C-t>"] = function() require "trouble.providers.telescope".open_with_trouble() end },
        },
      },
    },
    keys = {
      { "<Leader>ff", function() require "telescope.builtin".find_files() end, desc = "Find files" },
      { "<Leader>fg", function() require "telescope.builtin".live_grep() end,  desc = "Live grep" },
      { "<Leader>bf", function() require "telescope.builtin".buffers() end,    desc = "Find buffers" },
      { "<Leader>hf", function() require "telescope.builtin".help_tags() end,  desc = "Find help tags" },
      {
        "<Leader>gf",
        function() require "telescope.builtin".git_files() end,
        desc =
        "Find files in git tree"
      },
      { "<Leader>gb", function() require "telescope.builtin".git_branches() end, desc = "Find branches" },
      { "<Leader>gc", function() require "telescope.builtin".git_commits() end,  desc = "Inspect commits" },
      { "<Leader>kf", function() require "telescope.builtin".keymaps() end,      desc = "Find keymaps" },
      {
        "<Leader>bz",
        function() require "telescope.builtin".current_buffer_fuzzy_find() end,
        desc =
        "Find text in current buffer"
      },
    },
  },
  harpoon = {
    'theprimeagen/harpoon',
    config = function()
      require "core.plugins.harpoon"
    end,
    keys = {
      { "<Leader>fha", function() require "harpoon.mark".add_file() end,        desc = "Add current file to Harpoon" },
      { "<Leader>fhc", function() require "harpoon.mark".clear_all() end,       desc = "Clear all files in Harpoon" },
      { "<Leader>fht", function() require "harpoon.ui".toggle_quick_menu() end, desc = "Toggle Harpoon quick menu" },
    },
  },
  undotree = {
    'mbbill/undotree',
    keys = {
      { "<Leader>u", vim.cmd.UndotreeToggle, desc = "Toggle Undotree" },
    },
  },
  trouble = {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      { "<Leader>lt", function() require("trouble").toggle() end, desc = "Toggle Trouble" },
    },
  },
  gitsigns = {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    opts = {},
  },
  lualine = {
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
  Comment = {
    'numToStr/Comment.nvim',
    opts = {},
  },
  statuscol = {
    'luukvbaal/statuscol.nvim',
    opts = {
      -- configuration goes here, for example:
      -- relculright = true,
      -- segments = {
      --   { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
      --   {
      --     sign = { name = { "Diagnostic" }, maxwidth = 2, auto = true },
      --     click = "v:lua.ScSa"
      --   },
      --   { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
      --   {
      --     sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true },
      --     click = "v:lua.ScSa"
      --   },
      -- }
    },
  },
  neoconf = {
    "folke/neoconf.nvim",
    opts = {},
    priority = 99,
  },
  neodev = {
    'folke/neodev.nvim',
    opts = {
      library = { plugins = { "nvim-dap-ui" }, types = true },
    },
  },
  presence = {
    'andweeb/presence.nvim',
    opts = {
      main_image = "file",
    },
  },
  project = {
    "ahmedkhalf/project.nvim",
    main = "project_nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<Leader>pf",
        function() require "telescope".extensions.projects.projects {} end,
        desc = "Find projects",
      },
    },
  },
  toggleterm = {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
    keys = {
      { "<Leader>$", vim.cmd.ToggleTerm, desc = "Open a new terminal" },
    },
  },
  autopairs = {
    "windwp/nvim-autopairs",
    opts = {},
  },
  neogit = {
    'TimUntersberger/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    keys = {
      { "<Leader>gs", function() require "neogit".open({ kind = "split" }) end, desc = "Open Neogit" },
    },
  },
  illuminate = { 'RRethy/vim-illuminate' },
  hologram = { 'edluffy/hologram.nvim', opts = { auto_display = true } },
  distant = {
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
  glow = {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    opts = {},
  },
  todo_comments = {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {},
  },
  which_key = {
    "folke/which-key.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  zen_mode = {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  indent_blankline = {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      show_current_context = true,
      show_current_context_start = true,
    }
  },
  null_ls = {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require "core.plugins.null-ls"
    end
  },
  mason_null_ls = {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    opts = {},
  },
  dap = {
    "mfussenegger/nvim-dap",
    keys = {
      { "<Leader>db", function() require "dap".toggle_breakpoint() end, desc = "Toggle breakpoint" },
    },
  },
  dap_ui = {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  mason_dap = {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {},
  },
  norg = {
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
  vim_be_good = { "ThePrimeagen/vim-be-good" },
  orgmode = {
    'nvim-orgmode/orgmode',
    opts = {
      org_agenda_files = { "~/Nextcloud/org/*" },
      org_default_notes_file = "~/Nextcloud/org/refile.org",
    },
  },
  notify = {
    "rcarriga/nvim-notify",
    config = function()
      require "core.plugins.notify"
    end,
  },
  tsc = {
    "dmmulroy/tsc.nvim",
    dependencies = { "rcarriga/nvim-notify" },
    opts = {},
  },
  surround = {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {
      -- Configuration here, or leave empty to use defaults
    },
  },
  oil = {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<Leader>fe", function() require("oil").open() end, desc = "Open file explorer" },
    },
  },
  rust_tools = {
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
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
    },
    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim',
      'mfussenegger/nvim-dap',
    },
  },
}

function M.setup()
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

  if M.plugins.lazy.enabled == false then
    M.plugins.lazy.enabled = true
  end
  local plugins = {}
  for _, v in pairs(M.plugins) do
    table.insert(plugins, v)
  end
  require("lazy").setup(plugins)


  -- More plugin configuration
  if M.plugins.null_ls.enabled == nil or M.plugins.null_ls.enabled then
    require "core.plugins.null-ls"
  end
  if M.plugins.norg.enabled == nil or M.plugins.norg.enabled then
    require "core.plugins.norg"
  end
  if M.plugins.orgmode.enabled == nil or M.plugins.orgmode.enabled then
    require "core.plugins.orgmode"
  end
  if M.plugins.project.enabled == nil or M.plugins.project.enabled then
    require "core.plugins.project"
  end
  if M.plugins.neodev.enabled == nil or M.plugins.neodev.enabled then
    require "core.plugins.neodev"
  end
  if M.plugins.which_key.enabled == nil or M.plugins.which_key.enabled then
    require "core.plugins.which-key"
  end
  if M.plugins.lsp_zero.enabled == nil or M.plugins.lsp_zero.enabled then
    require "core.plugins.lsp"
  end
end

return M
