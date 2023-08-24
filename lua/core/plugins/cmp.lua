local cmp = require("cmp")
local luasnip = require("luasnip")

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
    ['<C-f>'] = cmp.mapping(function (fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, {"i", "s"}),
    ['<C-b>'] = cmp.mapping(function (fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {"i", "s"}),
  }),
})
