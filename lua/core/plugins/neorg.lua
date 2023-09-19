return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {},   -- Loads default behaviour
      ["core.concealer"] = {    -- Adds pretty icons to your documents
        config = {
          folds = false,
        },
      },
      ["core.dirman"] = {   -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/Nextcloud/norg/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.integrations.treesitter"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.presenter"] = {
        config = {
          zen_mode = "zen-mode",
        }
      },
      ["core.summary"] = {},
      ["core.keybinds"] = {
        config = {
          neorg_leader = "<Leader>o",
          hook = function(keybinds)
            keybinds.map("norg", "n", "<Leader>om",
              function() vim.cmd.Neorg("keybind", "norg", "core.looking-glass.magnify-code-block") end,
              { desc = "Magnify code block" })
            keybinds.map("norg", "n", "<Leader>ot", function() vim.cmd.Neorg("tangle", "current-file") end,
              { desc = "Tangle current file" })
          end,
        },
      },
      ["core.ui.calendar"] = {},
    },
  },
  dependencies = { { "nvim-lua/plenary.nvim" } },
}
