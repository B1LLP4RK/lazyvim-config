return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  opts = function(_, opts)
    table.insert(opts.ensure_installed, "latex")
  end,
}
