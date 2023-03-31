require("plugins")
require('leap-conf')
require("line-conf")
require('runner-conf')
require("coc-conf")
require("tree-conf")
require("telescope-conf")
require('impatient')
require('vimrc')

-- idris2
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "idris2" },
  callback = function()
    require('idris2').setup({})
  end
})

-- note manager
require('nothura')
vim.keymap.set('n', ',n', ':lua GotoZathura()<CR>', { noremap = true, silent = true })

-- treesitter
require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  },
})

-- aerial
vim.keymap.set('n', '}', '<cmd>AerialNext<CR>')
vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>')

-- harpoon
vim.keymap.set('n', '<Space>t', function() require("harpoon.term").gotoTerminal(1) end, {})
