local cmp = require("cmp")

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert',
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
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  }),
})
