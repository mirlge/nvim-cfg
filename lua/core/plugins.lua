local plugins = {
  lazy = { 'folke/lazy.nvim' },
  treesitter = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update { with_sync = true }
    end,
    config = function()
      require("core.plugins.treesitter")
    end,
  },
  rose_pine = {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function() require("core.plugins.rose-pine") end,
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
  },
  harpoon = {
    'theprimeagen/harpoon',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require("core.plugins.harpoon")
    end,
    keys = {
      {
        "<Leader>fha",
        function() require("harpoon.mark").add_file() end,
        desc = "Add current file to Harpoon",
      },
      {
        "<Leader>fhc",
        function() require("harpoon.mark").clear_all() end,
        desc = "Clear all files in Harpoon",
      },
      { "<Leader>fht", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle Harpoon quick menu" },
      {
        "<Leader>fhz",
        function() require("telescope").extensions.harpoon.marks() end,
        desc = "Show Harpoon marks in Telescope",
      },
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
      options = {
        globalstatus = true,
      },
      sections = {
        lualine_a = { {
          'buffers',
          filetype_names = {
            oil = 'File Explorer'
          },
          use_mode_colors = true,
        } },
        lualine_b = { { 'branch', use_mode_colors = false }, 'diff', 'diagnostics' },
        lualine_c = { 'overseer' },
        lualine_y = { 'filesize' }
      },
    },
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
        function() require("telescope").extensions.projects.projects {} end,
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
  neogit = {
    'NeogitOrg/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    keys = {
      { "<Leader>gs", function() require("neogit").open({ kind = "split" }) end, desc = "Open Neogit" },
    },
  },
  hologram = { 'edluffy/hologram.nvim', opts = { auto_display = true } },
  distant = {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require("core.plugins.distant")
    end,
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
      require("core.plugins.null-ls")
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
      { "<Leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
      { "<Leader>dc", function() require("dap").continue() end,          desc = "Continue" },
    },
  },
  dap_ui = {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {},
    keys = {
      { "<Leader>di", function() require("dapui").toggle() end, desc = "Toggle UI" },
    },
  },
  dap_virtual_text = {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
    opts = {},
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
      require("core.plugins.notify")
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
      { "<Leader>fe", function() require("oil").open_float() end, desc = "Open file explorer" },
      { "-",          function() require("oil").open() end,       desc = "Open file explorer" },
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
  mini = {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require("core.plugins.mini")
    end,
  },
  overseer = {
    'stevearc/overseer.nvim',
    opts = {
      strategy = "toggleterm",
    },
  },
  resession = {
    'stevearc/resession.nvim',
    opts = {},
    keys = {
      {
        "<Leader>ss",
        function() require("resession").save(vim.fn.input("Session name: ")) end,
        desc =
        "Save session",
      },
      {
        "<Leader>sl",
        function() require("resession").load() end,
        desc =
        "Load session",
      },
      {
        "<Leader>sd",
        function() require("resession").delete( --[[vim.fn.input("Session name: ")]]) end,
        desc =
        "Delete session",
      },
    },
  },
  beacon = { 'rainbowhxch/beacon.nvim', opts = { focus_gained = true } },
  zig_tools = {
    "NTBBloodbath/zig-tools.nvim",
    ft = "zig",
    opts = {},
    dependencies = {
      "akinsho/toggleterm.nvim",
      {
        "nvim-lua/plenary.nvim",
        module_pattern = "plenary.*",
      },
    },
  },
  rest = {
    "rest-nvim/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  dap_go = {
    "leoluz/nvim-dap-go",
    opts = {},
  },
  go = {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  cheat_sh = {
    "RishabhRD/nvim-cheat.sh",
    dependencies = { "RishabhRD/popfix" },
  },
  neogen = {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {},
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*",
  },
  marks = {
    "chentoast/marks.nvim",
    opts = {},
  },
  hardtime = {
    "m4xshen/hardtime.nvim",
    event = "VeryLazy",
    opts = {},
    enabled = false,
  },
  instant = {
    "jbyuki/instant.nvim",
    config = function()
      require("core.plugins.instant")
    end
  },
  multicursors = {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'smoka7/hydra.nvim',
    },
    opts = function()
      local N = require 'multicursors.normal_mode'
      local I = require 'multicursors.insert_mode'
      return {
        normal_keys = {
          -- to change default lhs of key mapping change the key
          ['b'] = {
            -- assigning nil to method exits from multi cursor mode
            method = N.clear_others,
            -- description to show in hint window
            desc = 'Clear others'
          },
        },
        insert_keys = {
          -- to change default lhs of key mapping change the key
          ['<CR>'] = {
            -- assigning nil to method exits from multi cursor mode
            method = I.Cr_method,
            -- description to show in hint window
            desc = 'new line'
          },
        },
      }
    end,
    keys = {
      {
        '<Leader>m',
        vim.cmd.MCstart,
        desc = 'Create a selection for word under the cursor',
      },
    },
  },
  dropbar = { 'Bekaboo/dropbar.nvim' },
}

return plugins
