-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard:append({ "unnamedplus" })

vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.opt.conceallevel = 1
vim.g.tex_conceal = "abdmg"
vim.opt.filetype = "plugin"
vim.opt.filetype = "indent"
vim.keymap.set("n", "<leader>ce", ":%s/\\r//g<cr>", { desc = "remove carriage retunr line feed" })
-- only for windows
vim.o.shell = "powershell"

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false
vim.filetype.add({
  extension = {
    pcsp = "pcsp",
  },
})
