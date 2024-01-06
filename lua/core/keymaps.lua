local M = {
  keymaps = {
    --- system clipboard
    -- yank
    { modes = { "n", "x" }, key = "<Leader>y", opts = { desc = "y, but to system clipboard" }, action = '"+y' },
    { modes = { "n", "x" }, key = "<Leader>Y", opts = { desc = "Y, but to system clipboard" }, action = '"+Y' },

    -- paste
    {
      modes = { "n", "x" },
      key = "<Leader>p",
      action = '"+p',
      opts = {
        desc = "p, but from system clipboard",
      },
    },
    {
      modes = { "n", "x" },
      key = "<Leader>P",
      action = '"+P',
      opts = {
        desc = "P, but from system clipboard",
      },
    },
    {
      modes = "x",
      key = "<Leader>p",
      action = [["_dP]],
      opts = { desc = "Replace with yanked text without overwriting it" },
    },

    -- buffers
    {
      modes = "n",
      key = "<Leader>bn",
      action = vim.cmd.bnext,
      opts = {
        desc = "Go to next buffer",
      },
    },
    {
      modes = "n",
      key = "<Leader>bp",
      action = vim.cmd.bprev,
      opts = {
        desc = "Go to previous buffer",
      },
    },
    {
      modes = "n",
      key = "<Leader>bd",
      action = vim.cmd.bdelete,
      opts = {
        desc = "Delete current buffer",
      },
    },

    { modes = "n", key = "<Leader><Leader>", action = vim.cmd.so, opts = { desc = "Source the current file" } },
  },
}

function M.setup()
  for i = 1, #M.keymaps do
    local keymap = M.keymaps[i]
    vim.keymap.set(keymap.modes, keymap.key, keymap.action, keymap.opts or {})
  end
end

return M
