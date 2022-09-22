vim.cmd("set nocompatible")
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- Indentation
-- I like no tabs, and 2 spaces
vim.o.tabstop = 2
vim.g.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.g.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- No backups
vim.o.backup = false
vim.o.writebackup = false
vim.bo.swapfile = false

-- Automatically update files
vim.o.autoread = true

-- Show trailing spaces
vim.o.list = true
vim.o.listchars = "tab:> ,trail:·"

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Clipboard
vim.o.clipboard="unnamedplus"

-- Search
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

-- Misc
vim.o.ttimeoutlen = 10
vim.o.showcmd = true
vim.o.wildmenu = true
vim.o.showmatch = true
vim.o.colorcolumn = ""
vim.o.cursorline = true
vim.o.mouse = "a"

-- Neovide
if vim.g.neovide then
  vim.g.neovide_transparency = 1
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_fullscreen = 0
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0
end
