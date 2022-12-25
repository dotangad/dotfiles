-- vim.cmd('scriptencoding utf-8')
vim.cmd('autocmd!')

require('my.options')
require('my.keymap')
require('my.plugins')
-- require('my.statusline')

-- Lua's `index.html` is `init.lua`, so this line looks for the file `dotangad/init.lua`
-- require('dotangad')

------------
--- TODO ---
------------
-- [ ] Debugging -> https://www.youtube.com/watch?v=0moS8UHupGc
-- [ ] Terminal mode setup
-- [ ] https://github.com/folke/trouble.nvim
-- [ ] Global find and replace
-- [ ] bash script to install LSPs
