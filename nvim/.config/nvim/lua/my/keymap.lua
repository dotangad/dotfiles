------------
-- Keymap --
------------
vim.g.mapleader = ' '

-- Switch modes from home row
vim.api.nvim_set_keymap("i", "jk", "<Esc>", {noremap = true})
vim.api.nvim_set_keymap("v", "aa", "<Esc>", {noremap = true})

-- Easier movement over lines
vim.api.nvim_set_keymap("n", ";", ":", {noremap = true})
vim.api.nvim_set_keymap("n", "0", "^", {noremap = true})
vim.api.nvim_set_keymap("n", "j", "gj", {noremap = true})
vim.api.nvim_set_keymap("n", "k", "gk", {noremap = true})
vim.api.nvim_set_keymap("n", "<Down>", "gj", {noremap = true})
vim.api.nvim_set_keymap("n", "<Up>", "gk", {noremap = true})

-- Save and quit
vim.api.nvim_set_keymap("n", "<leader><leader>", ":w<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>W", ":Wall<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap = true})


-- Exit help with q
vim.cmd([[
augroup hexit
  autocmd!
  autocmd FileType help nnoremap <buffer> q :q<CR>
augroup end
]])

-- Refresh buffer
vim.api.nvim_set_keymap("n", "<leader>r", ":e!<CR>", {noremap = true})

-- Reload config
vim.api.nvim_set_keymap("n", "<leader>R", ":so ~/.config/nvim/init.lua<CR>", {noremap = true})

-- Insert date
-- vim.api.nvim_set_keymap("n", "<leader>d", ":r !date \"+%Y-%M-%dT%H:%M:%S%z\"<CR>", {noremap = true})
function MyInsertDate()
  local pos = vim.api.nvim_win_get_cursor(0)
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos[2]) .. os.date("{ %a, %d %b %Y, %H%M }") .. line:sub(pos[2] + 1)
  vim.api.nvim_set_current_line(nline)
  vim.cmd("normal! o")
end
-- vim.api.nvim_set_keymap("n", "<leader>d", ":lua MyInsertDate()<CR>", {noremap = true})

-- Change indentation in visual/normal mode 
vim.api.nvim_set_keymap("v", "<tab>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("v", ">>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("v", "<<", "<gv", {noremap = true})
vim.api.nvim_set_keymap("n", ">>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("n", "<<", "<gv", {noremap = true})

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Tab management
vim.api.nvim_set_keymap("n", "L", ":tabn<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "H", ":tabp<CR>", {noremap = true})
vim.cmd("cabbrev t tabe")
