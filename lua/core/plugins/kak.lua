return {
  "mirge/kak.nvim",
  url = "https://codeberg.org/mirge/kak.nvim.git",
  dependencies = "folke/which-key.nvim",
  event = "VeryLazy", -- load after other plugins, to avoid conflicts in keybinds
  opts = {
    experimental = {
      rebind_visual_aiAI = true,
    },
  },
}
