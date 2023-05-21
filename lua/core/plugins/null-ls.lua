local null_ls = require("null-ls")

null_ls.setup {
  sources = {
    require("null-ls").builtins.hover.dictionary,
    require("null-ls").builtins.hover.printenv,
  },
}
