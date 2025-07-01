local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  opts = {
    document_highlight = { enabled = false },
    servers = {
      intelephense = {
        settings = {
          intelephense = {
            stubs = {
              "bcmath",
              "bz2",
              "Core",
              "curl",
              "date",
              "dom",
              "fileinfo",
              "filter",
              "gd",
              "hash",
              "iconv",
              "imap",
              "intl",
              "json",
              "libxml",
              "mbstring",
              "mcrypt",
              "mysql",
              "mysqli",
              "password",
              "pcntl",
              "pcre",
              "PDO",
              "pdo_mysql",
              "Phar",
              "readline",
              "Reflection",
              "session",
              "SimpleXML",
              "sockets",
              "sodium",
              "standard",
              "superglobals",
              "tokenizer",
              "xml",
              "xdebug",
              "zip",
              "zlib",
              "wordpress",
              "woocommerce",
              "acf-pro",
              "laravel",
              "lumen",
            },
            environment = {
              includePaths = { "/vendor/laravel/framework/src" },
            },
            files = {
              maxSize = 5000000,
            },
          },
        },
      },
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
            },
          },
        },
      },
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
      denols = {
        root_dir = util.root_pattern("deno.json", "deno.jsonc"),
        single_file_support = false,
        on_attach = function(_, bufnr)
          for _, lsp in pairs(vim.lsp.get_clients({ bufnr = bufnr })) do
            if lsp.name == "tsserver" or lsp.name == "ts_ls" then
              vim.notify("Stopping " .. lsp.name .. " because denols is active", vim.log.levels.INFO)
              lsp.stop()
            end
          end
        end,
        init_options = {
          enable = true,
          lint = true,
          unstable = true,
        },
      },
      ts_ls = {
        on_attach = function(client, bufnr)
          Snacks.notify.info("ts_ls attached")
          for _, lsp in pairs(vim.lsp.get_clients({ bufnr = bufnr })) do
            if lsp.name == "denols" then
              client.stop()
              vim.notify("Stopping ts_ls since denols is active.", vim.log.levels.INFO)
            end
          end
        end,
      },
    },
    keys = {
      {
        "<leader>ca",
        function()
          vim.lsp.buf.code_action()
        end,
      },
    },
  },
}
