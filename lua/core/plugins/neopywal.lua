return {
  "RedsXDD/neopywal.nvim",
  name = "neopywal",
  lazy = false,
  priority = 1000,
  opts = {
    use_palette = vim.fn.expand("~/.cache/iris/colors.vim"),
    plugins = {
      beacon = { enabled = true },
      lspsaga = { enabled = true },
      mini = {
        starter = true,
        cursorword = { enabled = true },
      },
      neogit = true,
      dap = true,
      dap_ui = true,
      overseer = true,
      rainbow = true,
      snacks = { enabled = true },
      telescope = { style = "nvchad" },
      trouble = true,
    },
    transparent_background = true,
  },
}
