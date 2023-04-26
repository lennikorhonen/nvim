local colorscheme = 'catppuccin'

if colorscheme == 'catppuccin' then
    require("catppuccin").setup({
        falvour = "mocha",
        transparent_background = true,
        term_colors = false,
        integrations = {
            cmp = true,
            telescope = true,
        }
    })
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
