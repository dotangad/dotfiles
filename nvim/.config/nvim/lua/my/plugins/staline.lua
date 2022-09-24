vim.opt.laststatus = 3
vim.opt.winbar = " %F "

vim.cmd [[ 
  hi WinBar gui=bold guifg=#dddddd
  hi WinBarNC guifg=#bbbbbb
]]

require('staline').setup {
  defaults = {
    expand_null_ls  = false, -- This expands out all the null-ls sources to be shown
    left_separator  = "",
    right_separator = "",
    full_path       = false,
    line_column     = "[%l/%L] :%c 並%p%% ", -- `:h stl` to see all flags.

    fg               = "#000000", -- Foreground text color.
    bg               = "none", -- Default background is transparent.
    inactive_color   = "#303030",
    inactive_bgcolor = "none",
    true_colors      = false, -- true lsp colors.
    font_active      = "none", -- "bold", "italic", "bold,italic", etc

    mod_symbol        = " [+] ",
    lsp_client_symbol = " ",
    branch_symbol     = " ",
    cool_symbol       = "", -- Change this to override default OS icon.
    null_ls_symbol    = "", -- A symbol to indicate that a source is coming from null-ls
  },
  mode_colors = {
    n = "#dddddd",
    i = "#986fec",
    c = "#e27d60",
    v = "#4799eb", -- etc..
  },
  mode_icons = {
    ["n"]  = "NORMAL",
    ["no"] = "NORMAL",
    ["v"]  = "VISUAL",
    ["V"]  = "VIS-LN",
    [""] = "VIS-BL",
    ["s"]  = "SELECT",
    ["S"]  = "SEL-LN",
    [""] = "SEL-BL",
    ["i"]  = "INSERT",
    ["ic"] = "INSERT",
    ["c"]  = "CMD   ",
    ["R"]  = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["cv"] = "VIM EX",
    ["ce"] = "EX",
    ["r"]  = "PROMPT",
    ["rm"] = "MOAR",
    ["r?"] = "CONFIRM",
    ["!"]  = "SHELL",
    ["t"]  = "TERMINAL",
  },
  sections = {
    left  = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
    mid   = { 'file_name' },
    right = { 'diagnostics', 'right_sep_double', '-line_column' },
  },
  special_table = {
    NvimTree = { 'NvimTree', ' ' },
    packer = { 'Packer', ' ' }, -- etc
  },
  lsp_symbols = {
    Error = " ",
    Info = " ",
    Warn = " ",
    Hint = "",
  },
}
