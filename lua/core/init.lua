local M = {}

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

---setup function
---@param opts { notes_dir: string, standalone: boolean }
function M.setup(opts)
  local opts = opts or {}
  M._config = vim.tbl_deep_extend("force", require("core.defaults"), opts)

  if not opts.standalone then
    require("core.options")
  end

  keymaps.setup()

  require("core.lsp")

  if not opts.standalone then
    require("core.lazy")
  end
end

return M
