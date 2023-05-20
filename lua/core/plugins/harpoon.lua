local mark = require "harpoon.mark"
local ui = require "harpoon.ui"

vim.keymap.set("n", "<Leader>fha", mark.add_file, { desc = "Add current file to Harpoon" })
vim.keymap.set("n", "<Leader>fhc", mark.clear_all, { desc = "Clear all files in Harpoon" })

vim.keymap.set("n", "<Leader>fht", ui.toggle_quick_menu, { desc = "Toggle Harpoon quick menu" })
