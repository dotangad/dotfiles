-- Gitsigns
require('gitsigns').setup({
  signs = {
    add          = {hl = 'GitSignsAdd'   , text     = '+', numhl = 'GitSignsAddNr'   , linehl = 'GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text     = '|', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text     = '-', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text     = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text     = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  keymaps = {
    -- Default keymap options
    noremap = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'"},

    ['n <leader>hs'] = '<cmd>Gitsigns stage_hunk<CR>',
    ['v <leader>hs'] = ':Gitsigns stage_hunk<CR>',
    ['n <leader>hu'] = '<cmd>Gitsigns undo_stage_hunk<CR>',
    ['n <leader>hp'] = '<cmd>Gitsigns preview_hunk<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
    ['n <leader>hS'] = '<cmd>Gitsigns stage_buffer<CR>',
    ['n <leader>hU'] = '<cmd>Gitsigns reset_buffer_index<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>Gitsigns select_hunk<CR>',
    ['x ih'] = ':<C-U>Gitsigns select_hunk<CR>'
  },
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 3000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
})

-- Neogit
require("neogit").setup {
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = true,
  auto_refresh = true,
  disable_builtin_notifications = false,
  commit_popup = {
      kind = "split",
  },
  -- Change the default way of opening neogit
  kind = "split",
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true  
  },
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = true
    },
  },
  -- override/add mappings
  mappings = {
    -- modify status buffer mappings
    status = {
      -- Adds a mapping with "B" as key that does the "BranchPopup" command
      ["B"] = "BranchPopup",
    }
  }
}

-- Keymaps
vim.api.nvim_set_keymap("n", "<leader>ng", ":Neogit<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<cr>", {noremap = true})
