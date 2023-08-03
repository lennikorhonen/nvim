vim.cmd.packadd('packer.nvim')

vim.cmd[[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua source <afile> | PackerSync
augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function ()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		"nvim-telescope/telescope.nvim",
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })
    use { "catppuccin/nvim", as = "catppuccin" }

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'ThePrimeagen/harpoon'
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'

    -- debug adaptor
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use { "theHamsta/nvim-dap-virtual-text", requires = {"mfussenegger/nvim-dap"} }
    use "nvim-telescope/telescope-dap.nvim"

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

    -- godot
    use 'habamax/vim-godot'

    use 'famiu/bufdelete.nvim'
end)
