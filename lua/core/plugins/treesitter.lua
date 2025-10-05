return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      "OXY2DEV/markview.nvim",
      "LiadOz/nvim-dap-repl-highlights",
    },
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          if vim.treesitter.language.add(lang) then
            vim.treesitter.start()
          end
        end,
      })
    end
  },
  { import = "core.plugins.treesitter" },
}
