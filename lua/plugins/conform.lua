return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters.black = {
      command = "/data/data/com.termux/files/home/.local/share/nvim/mason/bin/black"
    }
    opts.formatters_by_ft.python = { "black" }
  end,
}
