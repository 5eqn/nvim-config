local leap = require('leap')
vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
vim.keymap.set({ 'n', 'v' }, 'f', '<Plug>(leap-forward-to)', { noremap = true })
vim.keymap.set({ 'n', 'v' }, 'F', '<Plug>(leap-backward-to)', { noremap = true })
leap.opts.safe_labels = { 'q', 't', 'c', 'w', 'b', 'm', 'u', ',', ';' }
leap.opts.labels = { 'a', 'b', 'c', 'd', 'e', 'f',
  'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
  'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' }
leap.opts.special_keys = {
  repeat_search = '',
  next_phase_one_target = '',
  next_target = {},
  prev_target = {},
  next_group = '<space>',
  prev_group = '<tab>',
  multi_accept = '',
  multi_revert = '',
}
