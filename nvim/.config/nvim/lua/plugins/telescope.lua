return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader><space>", false },
    -- change a keymap
    { "<leader>p", "<cmd>Telescope git_files<cr>", desc = "Find Files (Git)" },
    { "<leader>P", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>dl", "<cmd>Telescope diagnostics<cr>", desc = "List diagnostics" },
    { "<leader>go", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Go to symbol" },
    -- add a keymap to browse plugin files
    -- {
    --   "<leader>fp",
    --   function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
    --   desc = "Find Plugin File",
    -- },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--hidden",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
      },
    })
  end,
}
