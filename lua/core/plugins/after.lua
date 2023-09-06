local corePlugins = require("core.plugins")

if corePlugins.null_ls.enabled == nil or corePlugins.null_ls.enabled then
  require("core.plugins.null-ls")
end
if corePlugins.neorg.enabled == nil or corePlugins.neorg.enabled then
  require("core.plugins.neorg")
end
if corePlugins.orgmode.enabled == nil or corePlugins.orgmode.enabled then
  require("core.plugins.orgmode")
end
if corePlugins.project.enabled == nil or corePlugins.project.enabled then
  require("core.plugins.project")
end
if corePlugins.neodev.enabled == nil or corePlugins.neodev.enabled then
  require("core.plugins.neodev")
end
if corePlugins.which_key.enabled == nil or corePlugins.which_key.enabled then
  require("core.plugins.which-key")
end
