local cmp = require("cmp")
local lspkind = require("lspkind")
local notify = require('notify')
notify.setup({
  timeout = 1000,
  stages = "fade",
})
cmp.setup {
  snippet = {
    expand = function(args)
      -- For `ultisnips` user.
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping {
    ["<C-j>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
      else
        fallback()
      end
    end,
    ["<C-k>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
      else
        fallback()
      end
    end,
    ['<C-l>'] = function(fallback)
      if cmp.get_selected_entry() then
        -- if cmp.visible() then
        cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace })
      else
        fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
      end
    end,

    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-u>"] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    -- { name = "copilot" },
    { name = "nvim_lsp" },                     -- For nvim-lsp
    { name = "ultisnips" },                    -- For ultisnips user.
    { name = "path" },                         -- for path completion
    { name = "buffer",   keyword_length = 2 }, -- for buffer word completion
    { name = "emoji",    insert = true },      -- emoji completion
  },

  completion = {
    keyword_length = 1,
    completeopt = "noselect",
  },
  view = {
    entries = "custom",
  },
  formatting = {
    format = lspkind.cmp_format {
      mode = "symbol_text",
      maxwidth = 50,
      -- symbol_map = { Copilot = "" },
      ellipsis_char = "…",
    },
  },
  experimental = { ghost_text = true, },
}

-- cmp.event:on("menu_opened", function()
--   vim.b.copilot_suggestion_hidden = true
-- end)
--
-- cmp.event:on("menu_closed", function()
--   vim.b.copilot_suggestion_hidden = false
-- end)

-- The following part is set in lsp_conf
--[[ -- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	capabilities = capabilities
} ]]
