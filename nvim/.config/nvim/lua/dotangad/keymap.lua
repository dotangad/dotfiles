------------
-- Keymap --
------------
vim.g.mapleader = ' '

-- Switch modes from home row
vim.keymap.set("i", "jk", "<Esc>", {noremap = true})
vim.keymap.set("v", "aa", "<Esc>", {noremap = true})

-- Easier movement over lines
vim.keymap.set("n", ";", ":", {noremap = true})
vim.keymap.set("n", "0", "^", {noremap = true})
vim.keymap.set("n", "j", "gj", {noremap = true})
vim.keymap.set("n", "k", "gk", {noremap = true})
vim.keymap.set("n", "<Down>", "gj", {noremap = true})
vim.keymap.set("n", "<Up>", "gk", {noremap = true})

-- Save and quit
vim.keymap.set("n", "<leader><leader>", ":w<CR>", {noremap = true})
vim.keymap.set("n", "<leader>W", ":Wall<CR>", {noremap = true})
vim.keymap.set("n", "<leader>q", ":q<CR>", {noremap = true})

-- Exit help with q
vim.cmd([[
augroup hexit
  autocmd!
  autocmd FileType help nnoremap <buffer> q :q<CR>
augroup end
]])

-- Refresh buffer
vim.keymap.set("n", "<leader>r", ":e!<CR>", {noremap = true})

-- Reload config
vim.keymap.set("n", "<leader>R", ":so ~/.config/nvim/init.lua<CR>", {noremap = true})

-- Insert date
-- vim.keymap.set("n", "<leader>d", ":r !date \"+%Y-%M-%dT%H:%M:%S%z\"<CR>", {noremap = true})
-- function MyInsertDate()
--   local pos = vim.api.nvim_win_get_cursor(0)
--   local line = vim.api.nvim_get_current_line()
--   local nline = line:sub(0, pos[2]) .. os.date("{ %a, %d %b %Y, %H%M }") .. line:sub(pos[2] + 1)
--   vim.api.nvim_set_current_line(nline)
--   vim.cmd("normal! o")
-- end
-- vim.keymap.set("n", "<leader>d", ":lua MyInsertDate()<CR>", {noremap = true})

-- Change indentation in visual/normal mode 
vim.keymap.set("v", "<tab>", ">gv", {noremap = true})
vim.keymap.set("v", ">>", ">gv", {noremap = true})
vim.keymap.set("v", "<<", "<gv", {noremap = true})
vim.keymap.set("n", ">>", ">gv", {noremap = true})
vim.keymap.set("n", "<<", "<gv", {noremap = true})

-- Tab management
vim.keymap.set("n", "L", ":tabn<CR>", {noremap = true})
vim.keymap.set("n", "H", ":tabp<CR>", {noremap = true})
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
