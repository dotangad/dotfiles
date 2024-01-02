return {
  "craftzdog/solarized-osaka.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },
  { "folke/noice.nvim", enabled = false },
}
