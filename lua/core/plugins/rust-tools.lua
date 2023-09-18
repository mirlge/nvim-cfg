return {
  'simrat39/rust-tools.nvim',
  opts = {
    server = {
      on_attach = function(_, bufnr)
        local rt = require("rust-tools")

        -- Hover actions
        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      end,
    },
    tools = {
      hover_actions = {
        auto_focus = true,
      },
    },
  },
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'mfussenegger/nvim-dap',
  },
}
