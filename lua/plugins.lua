return require("packer").startup(function()
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }
  use("wbthomason/packer.nvim")
  use("nvim-treesitter/nvim-treesitter")
  use("udalov/kotlin-vim")
  use("lervag/vimtex")
  use("SirVer/ultisnips")
  use("KeitaNakamura/tex-conceal.vim")
  use { 'neoclide/coc.nvim', branch = 'release' }
  use("vim-airline/vim-airline")
  use("vim-airline/vim-airline-themes")
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
end)
