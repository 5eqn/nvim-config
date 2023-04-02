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

-- aerial
vim.keymap.set('n', '}', '<cmd>AerialNext<CR>')
vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>')

-- harpoon
vim.keymap.set('n', '<Space>t', function() require("harpoon.term").gotoTerminal(1) end, {})
