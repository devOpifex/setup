local util = require("conform.util")
require("conform").formatters.styler = {
  meta = {
    url = "https://github.com/r-lib/styler/",
    description = "R formatter.",
  },
  command = util.find_executable({"usr/bin/"}, "R"),
  args = {"-s", "-e", "r.nvim::format()", "--args", "$FILENAME"},
  stdin = false,
}

local formatters = {
  javascript = {"eslint_d", "prettierd", },
  typescript = {"eslint_d", "prettierd",  },
  go = { "gofmt", },
  r = { "styler", },
  lue = { "stylua" }
}

require("conform").setup({
  formatters_by_ft = formatters,
  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
})

