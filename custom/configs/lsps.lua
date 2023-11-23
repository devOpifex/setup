local formatters = {
  javascript = { "eslint_d", "prettierd" },
  typescript = { "eslint_d", "prettierd" },
  go = { "gofmt", "goimports" },
  r = { "styler" },
  lua = { "stylua" },
  html = { "djlint" },
}

require("conform").setup {
  formatters_by_ft = formatters,
  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}
