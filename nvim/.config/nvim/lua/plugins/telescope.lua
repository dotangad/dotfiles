return {
  {
    "nvim-telescope/telescope.nvim",
    enabled = false,
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader><space>", false },
      { "<leader>p", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    },
  },
}
