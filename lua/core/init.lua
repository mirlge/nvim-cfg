local M = {}

M.helpers = require("core.helpers")

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

function M.setup()
  M.helpers.transparency()

  require("core.set")

  keymaps.setup()

  require("core.lazy")

  require("core.lsp")
end

return M
