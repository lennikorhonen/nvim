require('gruvbox').setup({
  terminal_colors = true,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  contrast = "hard",
  palette_overrides = {
    bg = '#2b2b2b',
    fg = '#a9b7c6',
  },
  overrides = {
    ["@variable"] = { fg = "#c9d0d3" },
    ["@parameter"] = { fg = "#c9d0d3" },
    ["@type"] = { fg = "#b9bcd1" },
    ["@keyword"] = { fg = "#cc7832" },
    ["@comment"] = { fg = "#808080" },
    ["@string"] = { fg = "#6a8759" },
  },
})

vim.cmd("colorscheme gruvbox")

-- local Color, colors, Group, groups, styles = require('colorbuddy').setup()
-- require('colorbuddy').colorscheme 'gruvbox'
--
-- Color.new('background', '#1e1e1e')

