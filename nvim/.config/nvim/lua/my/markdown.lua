vim.g.vim_markdown_folding_disabled = 1
vim.cmd([[
  let g:vim_markdown_folding_disabled = 1
  autocmd FileType markdown set wrap
  autocmd FileType markdown set linebreak
  autocmd FileType markdown setlocal spell spelllang=en_us
  autocmd FileType markdown vmap <leader><Bslash> :EasyAlign*<Bar><Enter>
]])
