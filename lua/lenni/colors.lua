require('catppuccin').setup({

})

-- vim.o.background = 'light'
local theme = 'catppuccin'

-- local datetime = os.date("*t")

-- if datetime.hour >= 18 then
--   theme = 'catppuccin'
-- end

local command = "colorscheme %s"

vim.cmd(string.format(command, theme))

