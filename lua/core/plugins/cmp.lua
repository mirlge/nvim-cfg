return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-orgmode/orgmode",
      "epwalsh/obsidian.nvim",
      "nvim-neorg/neorg",

      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-calc",
      "petertriho/cmp-git",
      "davidsierradz/cmp-conventionalcommits",
      "hrsh7th/cmp-nvim-lua",

      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-nvim-lsp-signature-help",

      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      "rcarriga/cmp-dap",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        preselect = "item",
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "neorg" },
          { name = "orgmode" },
          { name = "buffer" },
          { name = "path" },
          { name = "cmdline" },
          { name = "luasnip" },
          { name = "emoji" },
          { name = "calc" },
          { name = "git" },
          { name = "conventionalcommits" },
          { name = "obsidian.nvim" },
          { name = "nvim_lsp_signature_help" },
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
          ["<C-f>"] = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<C-b>"] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
      })

      require("cmp").setup.cmdline("/", {
        sources = cmp.config.sources({
          { name = "nvim_lsp_document_symbol" },
        }, {
          { name = "buffer" },
        }),
      })

      require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
        sources = {
          { name = "dap" },
        },
      })
    end,
  },
  { import = "core.plugins.cmp" },
}
