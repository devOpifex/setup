local util = require("conform.util")
require("conform").formatters.styler = {
  meta = {
    url = "https://github.com/r-lib/styler/",
    description = "R formatter.",
  },
  command = util.find_executable({"usr/bin/"}, "R"),
  args = {"-s", "-e", "r.nvim::format()", "--args", "$FILENAME", "grk"},
}

local formatters = {
  javascript = {"eslint_d", "prettier", },
  typescript = {"eslint_d", "prettier",  },
  go = { "gofmt", },
  r = { "styler", },
}

require("conform").setup({
  formatters_by_ft = formatters,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ async = true, bufnr = args.buf })
  end,
})
