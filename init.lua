require("plugins")
require("coc")

-- integrate with vimrc
local vimrc = vim.fn.stdpath("config") .. "/.vimrc"
vim.cmd.source(vimrc)

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  },
})

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
    haskell = "ghc -dynamic $fileName && $dir/$fileNameWithoutExt",
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    kotlin = "cd $dir && kotlinc $fileName -include-runtime -d $fileNameWithoutExt.jar && java -jar $fileNameWithoutExt.jar",
    python = "python3 -u",
    typescript = "deno run",
    rust = "cargo run",
    cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt"
  },
})

-- nvim tree

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>/f', builtin.find_files, {})
vim.keymap.set('n', '<Space>/g', builtin.live_grep, {})
vim.keymap.set('n', '<Space>/b', builtin.buffers, {})
vim.keymap.set('n', '<Space>/h', builtin.help_tags, {})

-- harpoon
local function term()
  require("harpoon.term").gotoTerminal(1)
end
vim.keymap.set('n', '<Space>t', term, {})
