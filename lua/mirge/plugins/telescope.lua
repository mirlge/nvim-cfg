local builtin = require "telescope.builtin"
local telescope = require "telescope"

--local actions = require "telescope.actions"
local trouble = require "trouble.providers.telescope"

vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<Leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<Leader>bf", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<Leader>hf", builtin.help_tags, { desc = "Find help tags" })
vim.keymap.set("n", "<Leader>gf", builtin.git_files, { desc = "Find files in git tree" })
vim.keymap.set("n", "<Leader>gb", builtin.git_branches, { desc = "Find branches" })
vim.keymap.set("n", "<Leader>gc", builtin.git_commits, { desc = "Inspect commits" })
--vim.keymap.set("n", "<Leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, {desc="Grep files"})
vim.keymap.set("n", "<Leader>kf", builtin.keymaps, { desc = "Find keymaps" })
vim.keymap.set("n", "<Leader>bz", builtin.current_buffer_fuzzy_find, { desc = "Find text in current buffer" })

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<C-t>"] = trouble.open_with_trouble },
      n = { ["<C-t>"] = trouble.open_with_trouble },
    }
  }
}
