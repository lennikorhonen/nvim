require('gruvbox').setup({
  terminal_colors = true,
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  contrast = "soft",
})

vim.cmd("colorscheme gruvbox")
