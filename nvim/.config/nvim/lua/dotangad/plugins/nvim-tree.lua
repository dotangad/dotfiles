require 'nvim-tree'.setup {
  disable_netrw       = false,
  hijack_netrw        = true,
  hijack_cursor       = false,
  update_cwd          = true,
  diagnostics         = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  git                 = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open         = {
    cmd  = nil,
    args = {}
  },
  filters             = {
    dotfiles = false,
    custom = {}
  },
  view                = {
    width = 35,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
