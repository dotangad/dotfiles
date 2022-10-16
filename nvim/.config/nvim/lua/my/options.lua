-------------
-- Options -- -----------
vim.cmd("set nocompatible")
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- Fold with markers ({{{ }}})
vim.opt.foldmethod = "marker"

-- Indentation: no tabs, 2 spaces
-- Visual length of a tab
vim.opt.tabstop = 2
-- How many spaces are inserted when the <tab> key is pressed
vim.opt.softtabstop = 2
-- How many spaces should autoindent use
vim.opt.shiftwidth = 2
-- When true, inserts spaces when <tab> is pressed
vim.opt.expandtab = true
-- Use same indentation on current line as previous line
vim.opt.autoindent = true
-- Smart indentation for C-like programs
vim.opt.smartindent = true

-- No backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Automatically update files
vim.opt.autoread = true

-- Project Specific VimRCs
vim.cmd [[ set exrc ]]

-- Show trailing spaces etc
vim.opt.list = true
-- vim.opt.listchars = "tab:> ,trail:·,eol:↩,multispace:·,nbsp:+"
vim.opt.listchars = "tab:> "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Use system clipboard
vim.opt.clipboard="unnamedplus"

-- Search as you type
vim.opt.incsearch = true
-- Don't highlight searches after search is closed
vim.opt.hlsearch = false
-- Case insensitive searching
vim.opt.ignorecase = true
-- Override the 'ignorecase' option if the search pattern contains uppercase characters.
vim.opt.smartcase = true

-- Time in ms to wait for a key code sequence to complete, this is faster than default (50)
vim.opt.ttimeoutlen = 10

-- Show last command in command line
vim.opt.showcmd = true

-- Don't show -- INSERT -- in command line
vim.opt.showmode = false

-- Enhanced command line completion
vim.opt.wildmenu = true

-- When a bracket is inserted, briefly jump to the matching one. Even better with Neovide's cursor animations.
vim.opt.showmatch = true

-- Highlight current line
vim.opt.cursorline = true

-- Enable mouse in all ('a') modes
vim.opt.mouse = "a"

-- Neovide
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_cursor_animation_length = 0.08

  -- Trail size in cursor animation
  vim.g.neovide_cursor_trail_size = 0
end

-- Fonts
vim.opt.guifont = "FiraCode Nerd Font:h13"

-- Aesthetics
vim.cmd [[
  set termguicolors
  colorscheme monokai-soda
]]

