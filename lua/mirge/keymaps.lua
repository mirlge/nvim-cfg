vim.keymap.set("n", "<Leader>fe", vim.cmd.Ex)

--- system clipboard
-- yank
vim.keymap.set({ "n", "v" }, "<Leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<Leader>Y", "\"+Y")

-- paste
vim.keymap.set({ "n", "v" }, "<Leader>p", "\"+p")
vim.keymap.set({ "n", "v" }, "<Leader>P", "\"+P")
