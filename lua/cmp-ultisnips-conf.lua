local cmp = require("cmp")
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
cmp.setup({
  mapping = {
    ["<C-j>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.compose { "jump_forwards" } (fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
    ["<C-k>"] = cmp.mapping(
      function(fallback)
        cmp_ultisnips_mappings.compose { "jump_backwards" } (fallback)
      end,
      { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
    ),
  },
})
