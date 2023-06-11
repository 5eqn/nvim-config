vim.keymap.set('n', '<space>s', '<cmd>lua require("spectre").open()<CR>', {
  desc = "Open Spectre"
})
require('spectre').setup({
  default = {
    replace = {
      cmd = "oxi"
    }
  }
})
