return require("packer").startup(function()
  ---------
  -- LSP --
  ---------

  -- syntax highlight
  use { 'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    config = [[require('treesitter-conf')]]
  }

  -- language server
  use { "williamboman/mason.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = [[require('mason-conf')]]
  }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = [[require('lsp-conf')]] }

  -- formatter
  use "lukas-reineke/lsp-format.nvim"

  -- auto-completion engine
  use { "onsails/lspkind-nvim", event = "VimEnter" }
  use { "hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('cmp-conf')]] }

  -- nvim-cmp completion sources
  use { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" }
  use { "hrsh7th/cmp-path", after = "nvim-cmp" }
  use { "hrsh7th/cmp-emoji", after = "nvim-cmp" }
  use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
  use { "hrsh7th/cmp-omni", after = "nvim-cmp" }
  use {
    "quangnguyen30192/cmp-nvim-ultisnips",
    after = { "nvim-cmp", "ultisnips" },
    config = [[require('cmp-ultisnips-conf')]]
  }

  -- auto complete
  use("github/copilot.vim")

  -- neovim plugin developing lsp support
  use 'folke/neodev.nvim'

  ----------
  -- EDIT --
  ----------

  -- better movement
  use {
    'ggandor/leap.nvim',
    config = [[require('leap-conf')]]
  }
  use 'tpope/vim-repeat'

  -- surrounding text-object editing
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- config = [[require('surround-conf')]]
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- comment toggling
  use {
    'numToStr/Comment.nvim',
    config = [[require('comment-conf')]]
  }

  -- unicode typing
  use { "chrisbra/unicode.vim", event = "VimEnter" }

  -- fcitx optimization
  use 'lilydjwg/fcitx.vim'

  -- global find and replace
  use {
    'nvim-pack/nvim-spectre',
    requires = 'nvim-lua/plenary.nvim',
    config = [[require('spectre-conf')]]
  }

  ----------
  -- FILE --
  ----------

  -- file icon
  use 'nvim-tree/nvim-web-devicons'

  -- netrw replacement
  -- use {
  --   '~/web/oil.nvim',
  --   config = function() require('oil').setup() end
  -- }

  -- file tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = [[require('neotree-conf')]]
  }

  -- file finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = {
      { 'nvim-lua/popup.nvim',                      'LinArcX/telescope-env.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = [[require('telescope-conf')]]
  }
  use { "nvim-telescope/telescope-symbols.nvim", after = "telescope.nvim" }

  ----------
  -- NOTE --
  ----------

  -- markdown
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'

  -- note manager
  use {
    '~/web/nothura.nvim',
    requires = 'stevearc/aerial.nvim',
    config = [[require('nothura-conf')]]
  }

  -- latex support
  use("lervag/vimtex")

  -- snippet
  use("SirVer/ultisnips")

  -- latex conceal
  use("KeitaNakamura/tex-conceal.vim")

  -----------
  -- INTEL --
  -----------

  -- git diff
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- git blame
  use 'f-person/git-blame.nvim'

  -- code outline
  use {
    'stevearc/aerial.nvim',
    config = [[require('aerial-conf')]]
  }

  -- color scheme
  use {
    'navarasu/onedark.nvim',
    config = [[require('onedark-conf')]]
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = [[require('lualine-conf')]]
  }

  -- notification manager
  use {
    "rcarriga/nvim-notify",
    event = "BufEnter",
  }

  ----------
  -- MISC --
  ----------

  -- startup time optimise
  use 'dstein64/vim-startuptime'
  use {
    'lewis6991/impatient.nvim',
    config = [[require('impatient')]]
  }

  -- package manager
  use("wbthomason/packer.nvim")

  -- code runner
  use {
    'CRAG666/code_runner.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = [[require('code-runner-conf')]]
  }

  -- session store
  use {
    'ThePrimeagen/harpoon',
    requires = 'nvim-lua/plenary.nvim',
    config = [[require('harpoon-conf')]]
  }
end)
