vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--- system clipboard
-- yank
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<leader>Y", "\"+Y")

-- paste
vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p")
vim.keymap.set({ "n", "v" }, "<leader>P", "\"+P")
