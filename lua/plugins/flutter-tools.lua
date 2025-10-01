return {
  "nvim-flutter/flutter-tools.nvim",
  ft = { "dart" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for improved UI
  },
  opts = {
    lsp = {
      -- Set this to false so flutter-tools doesn't setup LSP itself
      enabled = false,
      settings = {
        analysisExcludedFolders = {},
      },
    },
    -- You can add other flutter-tools options here if you wish
    debugger = {
      enabled = true,
    },
  },
  -- config = function(_, opts)
  --   require("flutter-tools").setup(opts)
  -- end,
}
