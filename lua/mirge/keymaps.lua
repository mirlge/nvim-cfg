-- netrw file explorer
--vim.keymap.set("n", "<Leader>fe", vim.cmd.Lex)

--- system clipboard
-- yank
vim.keymap.set({ "n", "v" }, "<Leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<Leader>Y", "\"+Y")

-- paste
vim.keymap.set({ "n", "v" }, "<Leader>p", "\"+p")
vim.keymap.set({ "n", "v" }, "<Leader>P", "\"+P")

-- tabs
vim.keymap.set("n", "<Leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<Leader>t<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<Leader>t<S-Tab>", vim.cmd.tabp)
--vim.keymap.set("n", "<Leader>tc", vim.cmd.tabc)
