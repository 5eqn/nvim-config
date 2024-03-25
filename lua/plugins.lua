return require("lazy").setup({
  ---------
  -- LSP --
  ---------

  -- syntax highlight
  {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('treesitter-conf') end
  }

  -- scala
  -- ,({ 'scalameta/nvim-metals', dependencies = { "nvim-lua/plenary.nvim" }, config = function() require('scala-conf') end })

  -- typst
  , { 'kaarmu/typst.vim', ft = { 'typst' } }

-- language server
, {
  "williamboman/mason.nvim",
  build = ":MasonUpdate", -- :MasonUpdate updates registry contents
  config = function() require('mason-conf') end
}
, { 'williamboman/mason-lspconfig.nvim' }
, { "neovim/nvim-lspconfig", dependencies = "cmp-nvim-lsp", config = function() require('lsp-conf') end }

-- formatter
, "lukas-reineke/lsp-format.nvim"

-- auto-completion engine
, { "onsails/lspkind-nvim", event = "VimEnter" }
, { "hrsh7th/nvim-cmp", dependencies = "lspkind-nvim", config = function() require('cmp-conf') end }

-- nvim-cmp completion sources
, { "hrsh7th/cmp-nvim-lsp", dependencies = "nvim-cmp" }
, { "hrsh7th/cmp-path", dependencies = "nvim-cmp" }
, { "hrsh7th/cmp-emoji", dependencies = "nvim-cmp" }
, { "hrsh7th/cmp-buffer", dependencies = "nvim-cmp" }
, { "hrsh7th/cmp-omni", dependencies = "nvim-cmp" }
, {
  "quangnguyen30192/cmp-nvim-ultisnips",
  dependencies = { "nvim-cmp", "ultisnips" },
  config = function() require('cmp-ultisnips-conf') end
}

-- neovim plugin developing lsp support
, 'folke/neodev.nvim'

----------
-- EDIT --
----------

-- auto complete
-- ,("github/copilot.vim")

-- better movement
, {
  'ggandor/leap.nvim',
  config = function() require('leap-conf') end
}
, 'tpope/vim-repeat'

-- surrounding text-object editing
, ({
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to , `main` branch for the latest features
  -- config = function() require('surround-conf') end
  config = function()
    require("nvim-surround").setup()
  end
})

-- comment toggling
, {
  'numToStr/Comment.nvim',
  config = function() require('comment-conf') end
}

-- unicode typing
, { "chrisbra/unicode.vim", event = "VimEnter" }

-- fcitx optimization
-- , 'lilydjwg/fcitx.vim'

-- global find and replace
, {
  'nvim-pack/nvim-spectre',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function() require('spectre-conf') end
}

----------
-- FILE --
----------

-- netrw replacement
-- , {
--   '~/web/oil.nvim',
--   config = function() require('oil').setup() end
-- }

-- file lsp sync
, {
  'antosha417/nvim-lsp-file-operations',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neo-tree/neo-tree.nvim",
  },
  config = function() require('file-lsp-conf') end
}

-- file tree
, {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function() require('neotree-conf') end
}

-- file finder
, {
  'nvim-telescope/telescope.nvim',
  -- or                            , branch = '0.1.x',
  dependencies = {
    { 'nvim-lua/popup.nvim',                      'LinArcX/telescope-env.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-lua/plenary.nvim' },
  },
  config = function() require('telescope-conf') end
}
, { "nvim-telescope/telescope-symbols.nvim", dependencies = "telescope.nvim" }

----------
-- NOTE --
----------

-- markdown
-- ,({
--   "iamcco/markdown-preview.nvim",
--   build = function() vim.fn["mkdp#util#install"]() end,
-- })
-- , 'godlygeek/tabular'
-- , 'preservim/vim-markdown'

-- note manager
, {
  '5eqn/nothura.nvim',
  dependencies = 'stevearc/aerial.nvim',
  config = function() require('nothura-conf') end
}

-- latex support
, ("lervag/vimtex")

-- snippet
, ("SirVer/ultisnips")

-- latex conceal
, ("KeitaNakamura/tex-conceal.vim")

-----------
-- INTEL --
-----------

-- git diff
, { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' }

-- git blame
, 'f-person/git-blame.nvim'

-- code outline
, {
  'stevearc/aerial.nvim',
  config = function() require('aerial-conf') end
}

-- color scheme
, {
  'navarasu/onedark.nvim',
  config = function() require('onedark-conf') end
}
-- , {
--   'Mofiqul/vscode.nvim',
--   config = function() require('color-theme-conf') end
-- }
-- , 'rakr/vim-one'

-- status line
, {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true },
  config = function() require('lualine-conf') end
}

-- notification manager
, {
  "rcarriga/nvim-notify",
  event = "BufEnter",
}

----------
-- MISC --
----------

-- startup time optimise
, 'dstein64/vim-startuptime'
, {
  'lewis6991/impatient.nvim',
  config = function() require('impatient') end
}

-- package manager
-- , ("wbthomason/packer.nvim")

-- code runner
, {
  'CRAG666/code_runner.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function() require('code-runner-conf') end
}

-- session store
, {
  'ThePrimeagen/harpoon',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function() require('harpoon-conf') end
}
})
