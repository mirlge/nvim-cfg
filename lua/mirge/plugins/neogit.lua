local neogit = require "neogit"
neogit.setup {}

vim.keymap.set("n", "<Leader>gs", function() neogit.open({ kind = "split" }) end)
