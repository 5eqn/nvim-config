local cmp = require("cmp")
local lspkind = require("lspkind")
local notify = require('notify')
notify.setup({
  timeout = 1000,
  stages = "fade",
})
lspkind.init({
  symbol_map = {
    Copilot = "",
  },
})
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })
cmp.setup {

  snippet = {
    expand = function(args)
      -- For `ultisnips` user.
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping {
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
      else
        fallback()
      end
    end,
    ["<C-Space>"] = cmp.mapping.complete({
      config = {
        sources = {
          { name = "copilot" },
          { name = "nvim_lsp" },  -- For nvim-lsp
          { name = "ultisnips" }, -- For ultisnips user.
          { name = "path" },
        }
      }
    }),
    -- ["<C-e>"] = cmp.mapping.complete({
    -- 	config = {
    -- 		sources = {
    -- 			{ name = "emoji", insert = true }
    -- 		}
    -- 	} }),
    -- ["<CR>"] = cmp.mapping.confirm { behavior=cmp.ConfirmBehavior.Replace },
    ['<CR>'] = function(fallback)
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
    { name = "copilot" },
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
      ellipsis_char = "…",
      menu = {
        nvim_lsp = "[LSP]",
        coplilot = "[Copilot]",
        ultisnips = "[Ulti]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        buffer = "[Buffer]",
        emoji = "[Emoji]",
        omni = "[Omni]",
      },
    },
  },
  experimental = { ghost_text = true, },
}

cmp.event:on("menu_opened", function()
  vim.b.copilot_suggestion_hidden = true
end)

cmp.event:on("menu_closed", function()
  vim.b.copilot_suggestion_hidden = false
end)

vim.keymap.set({ 'i', 'n', 'v' }, '<C-s>', function()
  require("copilot.suggestion").toggle_auto_trigger()
  print("Auto_trigger_status:", vim.b.copilot_suggestion_auto_trigger)
  require('notify')(
    vim.b.copilot_suggestion_auto_trigger and "Auto trigger enabled" or "Auto trigger disabled",
    "info",
    {
      title = "Copilot",
      timeout = 100,
    })
end)
vim.keymap.set({ 'i', 'n', 'v' }, '<C-f>',
  function() notify(vim.b.copilot_suggestion_hidden and "True" or "False") end)

vim.keymap.set({ 'i', 'n', 'v' }, '<C-p>', function() require("copilot.panel").open {} end)

-- The following part is set in lsp_conf
--[[ -- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	capabilities = capabilities
} ]]
