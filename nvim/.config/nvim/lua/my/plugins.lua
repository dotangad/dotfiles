return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Aesthetics
  use {
    'mhartington/oceanic-next',
    config = function ()
      vim.cmd("set termguicolors")
      vim.cmd("colorscheme OceanicNext")
    end
  }
  use {
    'itchyny/lightline.vim',
    config = function ()
      vim.cmd [[
        let g:lightline = {
          \ 'colorscheme': 'oceanicnext',
          \ 'mode_map': {
          \ 'n' : 'N',
          \ 'i' : 'I',
          \ 'R' : 'R',
          \ 'v' : 'V',
          \ 'V' : 'VL',
          \ "\<C-v>": 'VB',
          \ 'c' : 'C',
          \ 's' : 'S',
          \ 'S' : 'SL',
          \ "\<C-s>": 'SB',
          \ 't': 'T',
          \ },
        \ }
      ]]
    end
  }
  -- use {
  --   'vim-airline/vim-airline',
  --   requires = { 'vim-airline/vim-airline-themes' },
  --   config = function ()
  --     vim.cmd "let g:airline_theme='oceanicnext'"
  --   end
  -- }
  use {
    'glepnir/dashboard-nvim',
    config = function ()
       vim.cmd "let g:dashboard_default_executive='telescope'"
    end
  }

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
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
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
  use 'tpope/vim-commentary'
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
  -- use 'neovim/nvim-lspconfig'
end)
