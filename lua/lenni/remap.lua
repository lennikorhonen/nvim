local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- leader sets
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- File explorer
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
keymap("", "<leader>e", ":Lex 30<cr>", opts)

-- Resize vim panels
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Center cursor on jumps
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- buffer nav
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)
keymap("n", "<C-w>", ":Bdelete<CR>", opts)

keymap("i", "jk", "<ESC>", opts)

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("x", "<leader>p", "\"_dP", opts)

keymap("n", "Q", "nop", opts)
keymap("n", "<C-f>", "<cmd> silent !tmux neww tmux-sessionizer<CR>", opts)

