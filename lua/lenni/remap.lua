-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Basic Keymaps ]]
local opts = { expr = true, silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", opts)
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", opts)

-- Resize vim panels
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Center cursor on jumps
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
-- vim.keymap.set("n", "n", "nzzzv", opts)
-- vim.keymap.set("n", "N", "Nzzzv", opts)

-- buffer nav
-- vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
-- vim.keymap.set("n", "<S-h>", ":bprev<CR>", opts)
-- vim.keymap.set("n", "<C-w>", ":Bdelete<CR>", opts)

vim.keymap.set("i", "jk", "<ESC>", opts)

vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("v", "<", "<gv", opts)

vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "p", [["_dP]], opts)

vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

vim.keymap.set("x", "<leader>p", [["_dP]], opts)

vim.keymap.set("n", "Q", "nop", opts)
-- vim.keymap.set("n", "<C-f>", "<cmd> silent !tmux neww tmux-sessionizer<CR>", opts)

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
