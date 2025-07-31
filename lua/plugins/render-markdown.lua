return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    render_modes = true,
    heading = {
      enabled = true,
      atx = true,
      setext = true,
      sign = false,
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      position = "overlay",
      signs = { "󰫎 " },
      width = "block",
      left_margin = 0,
      left_pad = 0,
      right_pad = 4,
      min_width = 0,
      border = true,
      border_virtual = false,
      border_prefix = false,
      above = "▄",
      below = "▀",
      backgrounds = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH3Bg",
        "RenderMarkdownH4Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH6Bg",
      },
      foregrounds = {
        "RenderMarkdownH1",
        "RenderMarkdownH2",
        "RenderMarkdownH3",
        "RenderMarkdownH4",
        "RenderMarkdownH5",
        "RenderMarkdownH6",
      },
      custom = {},
    },
    checkbox = {
      -- Checkboxes are a special instance of a 'list_item' that start with a 'shortcut_link'.
      -- There are two special states for unchecked & checked defined in the markdown grammar.

      -- Turn on / off checkbox state rendering.
      enabled = true,
      -- Additional modes to render checkboxes.
      -- Render the bullet point before the checkbox.
      bullet = false,
      -- Padding to add to the right of checkboxes.
      right_pad = 1,
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'.
        icon = "󰄱 ",
        -- Highlight for the unchecked icon.
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox.
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "󰱒 ",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = nil,
      },
        -- Define custom checkbox states, more involved, not part of the markdown grammar.
        -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks.
        -- The key is for healthcheck and to allow users to change its values, value type below.
        -- | raw             | matched against the raw text of a 'shortcut_link'           |
        -- | rendered        | replaces the 'raw' value when rendering                     |
        -- | highlight       | highlight for the 'rendered' icon                           |
        -- | scope_highlight | optional highlight for item associated with custom checkbox |
        -- stylua: ignore
        custom = {
            todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
        },
    },
    code = {
      width = "block",
      left_pad = 2,
      right_pad = 4,
      min_width = 45,
      language_pad = 2,
    },
    indent = {
      enabled = true,
      skip_heading = true,
    },
  },
}
