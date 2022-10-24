require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = true, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = {
    "phpdoc"
  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
    additional_vim_regex_highlighting = { "markdown" }
  },
}


