local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "stevearc/conform.nvim",
      event = { "BufWritePre", "BufWritePost" },
      cmd = { "ConformInfo" },
      config = function()
        require "custom.configs.lsps"
      end,
      init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {}
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "r-languageserver",
        "html-lsp",
        "prettier",
        "stylua",
        "marksman",
        "gopls",
        "eslint_d",
      },
    },
  },
}

return plugins
