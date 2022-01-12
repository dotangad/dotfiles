return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Aesthetics
  use 'mhartington/oceanic-next'
  use 'frenzyexists/aquarium-vim'
  use {
    'cocopon/iceberg.vim',
    config = function ()
      vim.cmd("set termguicolors")
      vim.cmd("colorscheme iceberg")
    end
  }
  use {
    'itchyny/lightline.vim',
    config = function () require("my.lightline") end
  }
  use 'mhinz/vim-startify'


  -- Git integration
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function() require("my.gitsigns") end
  }
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
    config = function () require("my.neogit") end
  }
  use 'kdheepak/lazygit.nvim'
  use 'tpope/vim-fugitive'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function () require("my.treesitter") end
  }

  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function () require('my.telescope') end
  }

  -- Editing
  use 'tpope/vim-surround'
  use {
    'tpope/vim-commentary',
    config = function ()
      vim.cmd [[ autocmd FileType typescriptreact setlocal commentstring={/*\ %s\ */} ]]
    end
  }
  use 'jiangmiao/auto-pairs'
  use 'gregsexton/MatchTag'

  -- NVIM tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('my.nvim-tree') end
  }

  -- PHP/Laravel
  use 'jwalton512/vim-blade'

  -- Syntax Highlighting
  use 'sheerun/vim-polyglot'
  use 'styled-components/vim-styled-components'
  use 'evanleck/vim-svelte'
  use 'pantharshit00/vim-prisma'
  use 'alampros/vim-styled-jsx'
  use 'jxnblk/vim-mdx-js'

  -- Web dev
  use 'mattn/emmet-vim'

  -- Misc
  use 'tpope/vim-sensible'
  use 'tpope/vim-eunuch'
  use 'editorconfig/editorconfig-vim'
  use 'Pocco81/TrueZen.nvim'

  -- LSP
  use {
    'neoclide/coc.nvim',
    branch = "release",
    config = function () require("my.coc") end
  }
end)
