local vim = vim

vim.o.timeout = true
vim.o.timeoutlen = 300
require("which-key").setup({
})



local wk = require('which-key')
wk.register({
    l = {
      name = 'LSP',
      a = { '<Cmd>lua vim.lsp.buf.code_action()<Cr>', 'Code Actions' },
      i = { function() vim.lsp.buf.implementation() end, 'Implementation' },
      k = { function() vim.lsp.buf.hover() end, 'Hover' },
      ["<C-k>"] = { function() vim.lsp.buf.signature_help() end, 'Signature Help' },
      l = { function() vim.diagnostic.open_float() end, 'Show Line Diagnostics' },
      q = { function() vim.diagnostic.setloclist() end, 'Set Location List' },
      R = { '<Cmd>LspRestart<Cr>', 'Restart LSP' },
      n = { function() vim.lsp.buf.rename() end, 'Rename' },
      y = { function() vim.lsp.buf.type_definition() end, 'Type Definition' },
      -- Telescope lsp maps
      D = { '<Cmd>Telescope diagnostics bufnr=0<Cr>', 'Diagnostics' },
      I = { '<Cmd>Telescope lsp_implementations<Cr>', 'Implementations' },
      d = { '<Cmd>Telescope lsp_definitions<Cr>', 'Definitions' },
      r = { '<Cmd>Telescope lsp_references<Cr>', 'References' },
      s = { '<Cmd>Telescope lsp_document_symbols<Cr>', 'Symbols' },
      w = {
        name = "Workspace",
        a = { vim.lsp.buf.add_workspace_folder, 'Add Workspace Folder' },
        r = { vim.lsp.buf.remove_workspace_folder, 'Remove Workspace Folder' },
        l = { function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end,
          'List Workspace Folder' },
      },
    },
  },
  {
    prefix = '<Leader>',
  }
)
wk.register({
  gd = { vim.lsp.buf.definition, 'Goto Definition' },
  gD = { vim.lsp.buf.declaration, 'Goto Declaration' },
})
