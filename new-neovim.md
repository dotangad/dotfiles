# Ideas for a fresh Neovim config

- use fzf for file search instead of telescope
- greeter

```lua
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },
```

- buffer management

```lua
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
```

- retrobox, transparent bg

```lua
vim.cmd [[
  colorscheme retrobox
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
```

-
