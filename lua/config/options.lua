-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- setup clipboard for WSL, reference in from `:help clipbaord-wsl`
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}

vim.opt.clipboard:append({ "unnamedplus" })

vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.opt.conceallevel = 1
vim.g.tex_conceal = "abdmg"
vim.opt.filetype = "plugin"
vim.opt.filetype = "indent"
vim.g.mkdp_images_path = "/mnt/c/Users/bd080/OneDrive - National University of Singapore/Desktop/obs"
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
