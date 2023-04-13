-- netrw file explorer
--vim.keymap.set("n", "<Leader>fe", vim.cmd.Lex)

--- system clipboard
-- yank
vim.keymap.set({ "n", "v" }, "<Leader>y", "\"+y", { desc = "y, but to system clipboard" })
vim.keymap.set({ "n", "v" }, "<Leader>Y", "\"+Y", { desc = "Y, but to system clipboard" })

-- paste
vim.keymap.set({ "n", "v" }, "<Leader>p", "\"+p", { desc = "p, but to system clipboard" })
vim.keymap.set({ "n", "v" }, "<Leader>P", "\"+P", { desc = "P, but to system clipboard" })

-- tabs
vim.keymap.set("n", "<Leader>tn", vim.cmd.tabnew, { desc = "Create a new tab" })
vim.keymap.set("n", "<Leader>t<Tab>", vim.cmd.tabn, { desc = "Go to next tab" })
vim.keymap.set("n", "<Leader>t<S-Tab>", vim.cmd.tabp, { desc = "Go to previous tab" })
--vim.keymap.set("n", "<Leader>tc", vim.cmd.tabc, { desc="Close current tab" })

-- buffers
vim.keymap.set("n", "<Leader>b<Tab>", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<Leader>b<S-Tab>", vim.cmd.bprev, { desc = "Go to previous buffer" })
vim.keymap.set("n", "<Leader>bd", vim.cmd.bdelete, { desc = "Delete current buffer" })
