require("plugins")
require('vimrc')

vim.keymap.set('n', '<Space>i', function() require("idris2-conf") end, {})
