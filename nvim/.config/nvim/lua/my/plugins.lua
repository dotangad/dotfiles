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
  use {
    'kaicataldo/material.vim',
    config = function ()
      vim.cmd [[
        set termguicolors
        colorscheme material
      ]]
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function () require('my.plugins.lualine') end
  }
  -- }}}
  -- NVIM Tree {{{
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('my.plugins.nvim-tree')
      vim.api.nvim_set_keymap("n", "<leader>T", ":NvimTreeToggle<cr>", {noremap = true})
    end
  }
  -- }}}
  -- Telescope {{{
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function ()
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
    config = function () require("my.plugins.neogit") end
  }
  use 'kdheepak/lazygit.nvim'
  -- }}}


  -- Align text along <pattern> -> :Tab /<pattern>
  use 'godlygeek/tabular'

  use 'github/copilot.vim'
end)

