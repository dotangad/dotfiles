-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>td', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>do', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)

  -- Format on save
  -- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
end

-- Completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


-- Individual server configurations
-- Sumneko Lua {{{
require 'lspconfig'.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
-- }}}
-- Astro {{{
require 'lspconfig'.astro.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- }}}
-- CSS {{{
require 'lspconfig'.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- }}}
-- tsserver {{{
require 'lspconfig'.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- Svelte {{{
require 'lspconfig'.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- Emmet {{{
require 'lspconfig'.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})
-- }}}
-- ESLint {{{
require 'lspconfig'.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- Fix all on save (format)
vim.cmd [[ autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll ]]
-- }}}
-- sqls {{{
require 'lspconfig'.sqls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- pyright {{{
require 'lspconfig'.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- prismals {{{
require 'lspconfig'.prismals.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- vimls {{{
require 'lspconfig'.vimls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- jsonls {{{
require 'lspconfig'.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- intelephense {{{
require 'lspconfig'.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- tailwindcss {{{
require 'lspconfig'.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
-- solargraph (Ruby) {{{
require 'lspconfig'.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
-- }}}
