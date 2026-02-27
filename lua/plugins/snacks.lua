-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    image = {
      enabled = vim.fn.getenv("TERM") == "xterm-kitty" or vim.fn.getenv("TERM") == "xterm-256color",
      inline = false,
      float = true,
    },
    -- only for windows
    terminal = {
      shell = "powershell",
    },
    keys = {
      {
        "<c-/>",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle Terminal",
      },
      {
        "<leader>fT",
        function()
          Snacks.terminal()
        end,
        { desc = "Terminal (cwd)" },
      },
    },
  },
}
