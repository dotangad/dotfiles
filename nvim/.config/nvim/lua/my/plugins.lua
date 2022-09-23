local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)

return require('packer').startup(function(use)
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Basics and editing {{{
  -- Sensible defaults
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  -- Unix helpers
  use 'tpope/vim-eunuch'

  -- Insert or delete quotes/parens/brackets in pairs
  use 'jiangmiao/auto-pairs'

  -- Match tag in markup (HTML/JSX)
  use 'gregsexton/MatchTag'
  -- }}}
  -- Aesthetics {{{
  -- Start screen
  use 'mhinz/vim-startify'

  -- Theme
  use 'rktjmp/lush.nvim'
  use 'metalelf0/jellybeans-nvim'
  use 'kaicataldo/material.vim'

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('my.plugins.lualine') end
  }
  -- }}}
  -- NVIM Tree {{{
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('my.plugins.nvim-tree')
      vim.api.nvim_set_keymap("n", "<leader>T", ":NvimTreeToggle<cr>", { noremap = true })
    end
  }
  -- }}}
  -- Telescope {{{
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('my.plugins.telescope')
    end
  }
  -- }}}
  -- Git -> neogit, gitsigns.nvim, lazygit.nvim {{{
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function() require("my.plugins.gitsigns") end
  }
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
    config = function() require("my.plugins.neogit") end
  }
  use 'kdheepak/lazygit.nvim'
  -- }}}
  -- Which Key {{{
  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup {} end
  }
  -- }}}
  -- Treesitter {{{
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require("my.plugins.treesitter") end
  }
  -- }}}
  -- LSP and Completion {{{
  use {
    'neovim/nvim-lspconfig',
    config = function() require("my.plugins.lspconfig") end
  }

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'hrsh7th/nvim-cmp',
    config = function() require("my.plugins.completion") end
  }

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Nice pictograms for completion sources, setup in my.plugins.completion
  use 'onsails/lspkind.nvim'
  -- }}}

  -- Align text along <pattern> -> :Tab /<pattern>
  use 'godlygeek/tabular'

  use 'github/copilot.vim'

  -- Syntax highlighting for a bunch of languages
  use 'sheerun/vim-polyglot'

  -- Improved JavaScript syntax highlighting
  use 'pangloss/vim-javascript'

  -- Blade support
  use 'jwalton512/vim-blade'

  -- Astro language support
  use 'wuelnerdotexe/vim-astro'

  -- Prisma Syntax highlighting
  use 'pantharshit00/vim-prisma'
end)
