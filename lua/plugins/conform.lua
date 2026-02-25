return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft.css = { "prettier" }
    opts.formatters_by_ft.javascript = { "prettier" }
  end,
}
