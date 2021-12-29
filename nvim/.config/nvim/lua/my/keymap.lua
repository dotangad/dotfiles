vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", "jk", "<Esc>", {noremap = true})
vim.api.nvim_set_keymap("v", "aa", "<Esc>", {noremap = true})

vim.cmd([[
augroup hexit
  autocmd!
  autocmd FileType help nnoremap <buffer> q :q<CR>
augroup end
]])

vim.api.nvim_set_keymap("n", ";", ":", {noremap = true})
vim.api.nvim_set_keymap("n", "0", "^", {noremap = true})
vim.api.nvim_set_keymap("n", "j", "gj", {noremap = true})
vim.api.nvim_set_keymap("n", "k", "gk", {noremap = true})
vim.api.nvim_set_keymap("n", "<Down>", "gj", {noremap = true})
vim.api.nvim_set_keymap("n", "<Up>", "gk", {noremap = true})

vim.api.nvim_set_keymap("n", "<space><space>", ":w<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>W", ":Wall<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>r", ":e!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>R", ":so ~/.config/nvim/init.lua<CR>", {noremap = true})

vim.api.nvim_set_keymap("v", "<tab>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("v", ">>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("v", "<<", "<gv", {noremap = true})
vim.api.nvim_set_keymap("n", ">>", ">gv", {noremap = true})
vim.api.nvim_set_keymap("n", "<<", "<gv", {noremap = true})

vim.api.nvim_set_keymap("n", "L", ":tabn<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "H", ":tabp<CR>", {noremap = true})
vim.cmd("cabbrev t tabe")

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<S-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-x>f", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-x>d", "<cmd>lua require('telescope.builtin').file_browser()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-x>b", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>lua require('telescope.builtin').git_status()<cr>", {noremap = true})

-- Misc
vim.api.nvim_set_keymap("n", "<leader>ng", ":Neogit<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>T", ":NvimTreeToggle<cr>", {noremap = true})
