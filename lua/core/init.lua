local M = {}

local plugins = require("core.plugins")
M.helpers = require("core.helpers")
M.keymaps = require("core.keymaps")
M.plugins = plugins.plugins

function M.setup()
  M.helpers.transparency()

  require("core.set")

  M.keymaps.setup()

  plugins.setup()
end

return M
