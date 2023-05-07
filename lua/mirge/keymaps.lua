-- netrw file explorer
--vim.keymap.set("n", "<Leader>fe", vim.cmd.Lex)

--- system clipboard
-- yank
vim.keymap.set({ "n", "v" }, "<Leader>y", "\"+y", { desc = "y, but to system clipboard" })
vim.keymap.set({ "n", "v" }, "<Leader>Y", "\"+Y", { desc = "Y, but to system clipboard" })

-- paste
vim.keymap.set({ "n", "v" }, "<Leader>p", "\"+p", { desc = "p, but to system clipboard" })
vim.keymap.set({ "n", "v" }, "<Leader>P", "\"+P", { desc = "P, but to system clipboard" })
vim.keymap.set("x", "<Leader>p", [["_dP]], { desc = "Replace with yanked text without overwriting it" })

-- buffers
vim.keymap.set("n", "<Leader>b<Tab>", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<Leader>b<S-Tab>", vim.cmd.bprev, { desc = "Go to previous buffer" })
vim.keymap.set("n", "<Leader>bd", vim.cmd.bdelete, { desc = "Delete current buffer" })

-- moving lines
vim.keymap.set({ "n", "v" }, "<A-j>", function() vim.cmd.m(".+") end)
vim.keymap.set({ "n", "v" }, "<A-k>", function() vim.cmd.m(".-2") end)

vim.keymap.set("n", "<Leader><Leader>", vim.cmd.so)
