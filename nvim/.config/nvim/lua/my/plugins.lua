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
  use { 'jzelinskie/monokai-soda.vim', requires = 'tjdevries/colorbuddy.vim' }
  use {
      'rose-pine/neovim',
      as = 'rose-pine',
  }

  -- Statusline - Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      { 'kyazdani42/nvim-web-devicons', opt = true },
      { 'arkav/lualine-lsp-progress', opt = false }
    },
  }
  -- }}}

  -- NVIM Tree {{{
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  -- }}}

  -- Telescope {{{
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }
  -- }}}

  -- Git -> neogit, gitsigns.nvim, lazygit.nvim {{{
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
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
  }
  use 'nvim-treesitter/playground'
  -- }}}

  -- LSP and Completion {{{
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'onsails/lspkind.nvim'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use {
    'mhanberg/elixir.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("elixir").setup()
    end
  }
  -- }}}

  -- Misc {{{
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

  -- Emmet
  use 'mattn/emmet-vim'

  -- ZK
  -- use {
  --   'mickael-menu/zk-nvim',
  --   config = function() require('my.plugins.zk') end
  -- }

  -- Obsidian
  use 'preservim/vim-markdown'
  -- use 'godlygeek/tabular'  -- needed by 'preservim/vim-markdown'
  use 'epwalsh/obsidian.nvim'
  -- }}}

end)
