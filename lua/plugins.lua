return require("packer").startup(function()
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }
  use("wbthomason/packer.nvim")
  use("github/copilot.vim")
  use("nvim-treesitter/nvim-treesitter")
  use("udalov/kotlin-vim")
  use("lervag/vimtex")
  use("SirVer/ultisnips")
  use("KeitaNakamura/tex-conceal.vim")
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
