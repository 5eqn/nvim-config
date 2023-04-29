require("mason-lspconfig").setup()
require("lsp-format").setup {}

local lsp_on_attach = function(client, bufnr)
  require("lsp-format").on_attach(client)
end
local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp = require 'lspconfig'

lsp.pylsp.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.bashls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.rust_analyzer.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.clangd.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.cmake.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.cssls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.docker_compose_language_service.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.dockerls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.gopls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.html.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.jdtls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.jsonls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.kotlin_language_server.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.ltex.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.lua_ls.setup {
  capabilities = cmp_capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'use' }
      }
    }
  },
  on_attach = lsp_on_attach
}
lsp.sqlls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.vimls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}
lsp.yamlls.setup {
  capabilities = cmp_capabilities,
  on_attach = lsp_on_attach
}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wl', function()
    -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})
