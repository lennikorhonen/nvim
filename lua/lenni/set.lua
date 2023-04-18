local options = {
  backup = false,                          -- creates backup file if true
  clipboard = "unnamedplus",               -- access to system clipboard
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  cc = '80',
  fileencoding = "utf-8",
  hlsearch = false,
  incsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 4,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 50,
  writebackup = false,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}

vim.opt.shortmess:append "c"
for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.isfname:append("@-@")

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]
vim.cmd "let g:astro_typescript='enable'"
