local builtin = require('telescope.builtin')
local telescope = require 'telescope'
telescope.load_extension('env')
telescope.load_extension('ui-select')
telescope.load_extension("yank_history")
telescope.setup({
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      hidden = true,
    },
  },
  extensions = {
    aerial = {
      -- Display symbols as <root>.<parent>.<symbol>
      show_nesting = {
        ['_'] = false, -- This key will be the default
        json = true,   -- You can set the option for specific filetypes
        yaml = true,
      }
    }
  }
})
vim.keymap.set('n', '<Space>/', builtin.find_files, {})
vim.keymap.set('n', '<Space>a', require("telescope").extensions.aerial.aerial, {})
vim.keymap.set('n', '<Space>y', require("telescope").extensions.yank_history.yank_history, {})
vim.keymap.set('n', '<Space>g', builtin.live_grep, {})
vim.keymap.set('n', '<Space>b', builtin.buffers, {})
vim.keymap.set('n', '<Space>h', builtin.help_tags, {})
