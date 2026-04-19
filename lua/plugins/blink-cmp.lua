return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = { preset = "default" }
    local config_dir = vim.fn.stdpath("config")

    -- Ensure snippets source exists and merge search_paths
    opts.sources = opts.sources or {}
    opts.sources.providers = opts.sources.providers or {}
    opts.sources.providers.snippets = opts.sources.providers.snippets or { opts = {} }
    opts.sources.providers.snippets.opts = opts.sources.providers.snippets.opts or {}
    opts.sources.providers.snippets.opts.search_paths = vim.list_extend(
      opts.sources.providers.snippets.opts.search_paths or { config_dir .. "/snippets" },
      { config_dir .. "/snippets/math-snippets" }
    )
  end,
}
