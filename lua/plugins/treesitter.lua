return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    require("nvim-treesitter.install").prefer_git = false
    table.insert(opts.ensure_installed, "latex")
  end,
}
