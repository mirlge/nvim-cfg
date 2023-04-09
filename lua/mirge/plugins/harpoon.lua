local mark = require "harpoon.mark"
local ui = require "harpoon.ui"

vim.keymap.set("n", "<Leader>ha", mark.add_file)
vim.keymap.set("n", "<Leader>hc", mark.clear_all)

vim.keymap.set("n", "<Leader>ht", ui.toggle_quick_menu)
