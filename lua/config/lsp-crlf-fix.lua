-- Normalize CRLF in any LSP-applied text edits, for windows instances
local apply = vim.lsp.util.apply_text_edits
vim.lsp.util.apply_text_edits = function(edits, bufnr, enc)
  for _, e in ipairs(edits or {}) do
    if e.newText then
      e.newText = e.newText:gsub("\r", "")
    end
  end
  return apply(edits, bufnr, enc)
end
