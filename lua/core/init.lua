local M = {}

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

---setup function
---@param opts? { notes_dir?: string }
function M.setup(opts)
  local opts = opts or {}
  M._config = vim.tbl_deep_extend("force", require("core.defaults"), opts)
  require("core.options")
  keymaps.setup()
  require("core.lsp")
  require("core.lazy")
  require("core.post-options")
  vim.cmd.colorscheme("neopywal")
end

return M
