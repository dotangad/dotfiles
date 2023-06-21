------------
-- Keymap --
------------
vim.g.mapleader = ' '

-- Switch modes from home row
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("v", "aa", "<Esc>", { noremap = true })

-- Easier movement over lines
vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "0", "^", { noremap = true })
vim.keymap.set("n", "j", "gj", { noremap = true })
vim.keymap.set("n", "k", "gk", { noremap = true })
vim.keymap.set("n", "<Down>", "gj", { noremap = true })
vim.keymap.set("n", "<Up>", "gk", { noremap = true })

-- Save and quit
vim.keymap.set("n", "<leader><leader>", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>W", ":Wall<CR>", { noremap = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })

-- Exit help with q
vim.cmd([[
augroup hexit
  autocmd!
  autocmd FileType help nnoremap <buffer> q :q<CR>
augroup end
]])

-- Refresh buffer
vim.keymap.set("n", "<leader>r", ":e!<CR>", { noremap = true })

-- Reload config
vim.keymap.set("n", "<leader>R", ":so ~/.config/nvim/init.lua<CR>", { noremap = true })

-- Change indentation in visual/normal mode
vim.keymap.set("v", "<tab>", ">gv", { noremap = true })
vim.keymap.set("v", ">>", ">gv", { noremap = true })
vim.keymap.set("v", "<<", "<gv", { noremap = true })
vim.keymap.set("n", ">>", ">gv", { noremap = true })
vim.keymap.set("n", "<<", "<gv", { noremap = true })

-- Tab management
vim.keymap.set("n", "L", ":tabn<CR>", { noremap = true })
vim.keymap.set("n", "H", ":tabp<CR>", { noremap = true })
vim.cmd("cabbrev t tabe")

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
