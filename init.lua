require("plugins")
require("line")
require("coc")
require("tree")
require('impatient')

-- integrate with vimrc
local vimrc = vim.fn.stdpath("config") .. "/.vimrc"
vim.cmd.source(vimrc)

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

-- code runner
require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
    haskell = "ghc -dynamic $fileName && $dir/$fileNameWithoutExt",
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    kotlin =
    "cd $dir && kotlinc $fileName -include-runtime -d $fileNameWithoutExt.jar && java -jar $fileNameWithoutExt.jar",
    python = "python3 -u",
    typescript = "deno run",
    rust = "cargo run",
    cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt"
  },
})

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>f', builtin.find_files, {})
vim.keymap.set('n', '<Space>a', require("telescope").extensions.aerial.aerial, {})
vim.keymap.set('n', '<Space>g', builtin.live_grep, {})
vim.keymap.set('n', '<Space>b', builtin.buffers, {})
vim.keymap.set('n', '<Space>h', builtin.help_tags, {})
require('telescope').setup({
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
        json = true,       -- You can set the option for specific filetypes
        yaml = true,
      }
    }
  }
})

-- harpoon
vim.keymap.set('n', '<Space>t', function() require("harpoon.term").gotoTerminal(1) end, {})
