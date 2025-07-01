return {
  {
    "snacks.nvim",
    opts = {
      indent = { enabled = true },
      image = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = false }, -- we set this in options.lua
      toggle = { map = LazyVim.safe_keymap_set },
      words = { enabled = false },
      dashboard = { enabled = true },
    },
    keys = {
      { "<leader><space>", false }, -- this is used to save files
    },
  },
}
