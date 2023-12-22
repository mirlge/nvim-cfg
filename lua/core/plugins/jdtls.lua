return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  opts = {
    cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
    root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
  },
  config = function(_, opts)
    require("jdtls").start_or_attach(opts)
  end,
}
