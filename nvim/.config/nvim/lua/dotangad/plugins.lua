-- Bootstrap packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Sensible defaults
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'dotangad.plugins.telescope'
      pcall(require('telescope').load_extension, 'fzf')
      vim.keymap.set('n', '<leader>p', require('telescope.builtin').find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<M-p>', require('telescope.builtin').find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find,
        { desc = 'Find in buffer' })
      vim.keymap.set('n', '<C-s>', require('telescope.builtin').current_buffer_fuzzy_find,
        { desc = 'Swiper stop swiping' })
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Project [F]ind using [G]rep' })
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[F]ind [B]uffers' })
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
      vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })
      vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
      vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
      vim.keymap.set('n', '<leader>:', require('telescope.builtin').commands, { desc = '[:] Telescope commands' })
    end
  }
  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    config = function()
      return vim.fn.executable 'make' == 1
    end,
  }

  -- Treesitter
  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    requires = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
      require 'dotangad.plugins.treesitter'
    end,
  }

  -- LSP and completion
  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', tag = 'legacy' },
      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
    config = function()
      require('fidget').setup {}
      require 'dotangad.plugins.lspconfig'
    end
  }

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' }
  }

  -- ___/\___
  use 'github/copilot.vim'

  -- Git stuff --> gitsigns, neogit, lazygit, fugitive, rhubarb
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'dotangad.plugins.gitsigns'
    end
  }
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim'
    },
    config = function()
      require 'dotangad.plugins.neogit'
      vim.keymap.set('n', '<leader>ng', ':Neogit<cr>', { noremap = true })
    end
  }
  use {
    'kdheepak/lazygit.nvim',
    config = function()
      vim.keymap.set('n', '<leader>lg', ':LazyGit<cr>', { noremap = true })
    end
  }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'


  -- Align text along <pattern> -> :Tab /<pattern>
  use 'godlygeek/tabular'
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
  -- Match tag in markup (HTML/JSX)
  use 'gregsexton/MatchTag'
  -- use 'tpope/vim-commentary' -- Replacing with Comment.nvim
  -- Automatically detect shiftwidth, expandtab
  use 'tpope/vim-sleuth'
  -- Unix helpers
  use 'tpope/vim-eunuch'
  -- Insert or delete quotes/parens/brackets in pairs
  use {
    'jiangmiao/auto-pairs',
    config = function()
      -- This conflicts with the Cmd+P binding I have for Telescope
      vim.cmd [[
        let g:AutoPairsShortcutToggle = '<M-C-p>'
      ]]
    end
  }
  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  -- NVIM Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'dotangad.plugins.nvim-tree'
      vim.keymap.set('n', '<leader>T', ':NvimTreeToggle<cr>', { noremap = true })
    end
  }

  -- Theme
  use {
    'jzelinskie/monokai-soda.vim',
    requires = 'tjdevries/colorbuddy.vim',
    config = function()
      vim.cmd [[
        set termguicolors
        colorscheme monokai-soda
      ]]
    end
  }

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup()
    end
  }

  -- Guess indentation without much effort - vim-sleuth already does this you fucking idiot
  -- use {
  --   'nmac427/guess-indent.nvim',
  --   config = function() require('guess-indent').setup {} end,
  -- }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
