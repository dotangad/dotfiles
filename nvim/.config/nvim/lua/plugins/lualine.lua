return {
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    -- opts = function(_, opts)
    --   local colors = {
    --     [""] = Snacks.util.color("Special"),
    --     ["Normal"] = Snacks.util.color("Special"),
    --     ["Warning"] = Snacks.util.color("DiagnosticError"),
    --     ["InProgress"] = Snacks.util.color("DiagnosticWarn"),
    --   }
    --   table.insert(opts.sections.lualine_x, 2, {
    --     function()
    --       local icon = require("lazyvim.config").icons.kinds.Copilot
    --       local status = require("copilot.api").status.data
    --       return icon .. (status.message or "")
    --     end,
    --     cond = function()
    --       if not package.loaded["copilot"] then
    --         return
    --       end
    --       local ok, clients = pcall(LazyVim.lsp.get_clients, { name = "copilot", bufnr = 0 })
    --       if not ok then
    --         return false
    --       end
    --       return ok and #clients > 0
    --     end,
    --     color = function()
    --       if not package.loaded["copilot"] then
    --         return
    --       end
    --       local status = require("copilot.api").status.data
    --       return colors[status.status] or colors[""]
    --     end,
    --   })
    -- end,
  },
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
      vim.g.navic_silence = true
      LazyVim.lsp.on_attach(function(client, buffer)
        if client.supports_method("textDocument/documentSymbol") then
          require("nvim-navic").attach(client, buffer)
        end
      end)
    end,
    opts = {
      separator = " ",
      highlight = true,
      depth_limit = 5,
      icons = LazyVim.config.icons.kinds,
      lazy_update_context = true,
    },
  },
}
