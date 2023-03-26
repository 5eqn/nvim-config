require("plugins")
require('leap-conf')
require("line-conf")
require('runner-conf')
require("coc-conf")
require("tree-conf")
require("telescope-conf")
require('impatient')
require('vimrc')

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
vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })

-- harpoon
vim.keymap.set('n', '<Space>t', function() require("harpoon.term").gotoTerminal(1) end, {})
