return {
  "kristijanhusak/vim-dadbod-ui",
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "dbui", "sql" },
      callback = function()
        -- Normal mode F5
        vim.keymap.set("n", "<F5>", "<Plug>(DBUI_ExecuteQuery)", { buffer = true, silent = true, remap = true })

        -- Insert mode F5
        vim.keymap.set("i", "<F5>", function()
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, true, true), "n", true)
          vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<Plug>(DBUI_ExecuteQuery)", true, true, true),
            "n",
            true
          )
        end, { buffer = true, silent = true })
      end,
    })
  end,
}
