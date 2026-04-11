return {
  "yetone/avante.nvim",
  dependencies = { "zbirenbaum/copilot.lua" },
  opts = {
    windows = {
      width = 40, -- default % based on available width
    },
    provider = "claude",
    providers = {
      claude = {
        endpoint = "https://api.anthropic.com",
        instructions_file = "AGENTS.md",
        model = "claude-opus-4-6",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 20480,
        },
      },
    },
    web_search_engine = {
      provider = "searxng",
      -- proxy = "http://127.0.0.1:7890", -- optional
    },
  },
}
