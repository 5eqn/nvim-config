return require("packer").startup(function()
  -- code outline
  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }

  -- file manager
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }

  -- package manager
  use("wbthomason/packer.nvim")

  -- auto complete
  use("github/copilot.vim")

  -- syntax highlight
  use("nvim-treesitter/nvim-treesitter")

  -- latex support
  use("lervag/vimtex")

  -- snippet
  use("SirVer/ultisnips")

  -- latex preview
  use("KeitaNakamura/tex-conceal.vim")

  -- language server
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- code runner
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- session store
  use { 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' }

  -- file finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
