vim.o.background = 'light'
require('onedark').setup {
  style = 'light',
  transparent = true,
  highlights = {
    -- Conceal = { bg = "#00000000" },
    -- TabLineFill = { bg = "#00000000" },
    -- MiniTablineFill = { bg = "#00000000" },
    -- MiniStatuslineFilename = { bg = "#00000000" },
    -- StatusLineTermNC = { bg = "#00000000" },
    -- DiffviewStatusLineNC = { bg = "#00000000" },
    -- StatusLineNC = { bg = "#00000000" },
    FloatBorder = { fg = "#F1F1F1" },
    -- NormalFloat = { bg = "#00000000" },
  },
}
require('onedark').load()
