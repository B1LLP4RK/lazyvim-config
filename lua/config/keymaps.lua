-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-b>", "<C-v>")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("n", "<leader>xo", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "toggle diagnostics" })
vim.keymap.del({ "n", "t" }, "<c-/>")
vim.keymap.del({ "n", "t" }, "<c-_>")
vim.keymap.set({ "n", "t" }, "<c-_>", function()
  Snacks.terminal()
end, { desc = "open terminal" })
