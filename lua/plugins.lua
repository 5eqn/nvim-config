return require("packer").startup(function()
  -- markdown
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'

  -- starup time optimise
  use 'dstein64/vim-startuptime'
  use 'lewis6991/impatient.nvim'

  -- note manager
  use {
    '~/web/nothura.nvim',
    requires = 'stevearc/aerial.nvim'
  }

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

  -- surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- syntax highlight
  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  })

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
