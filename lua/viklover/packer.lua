vim.cmd [[packadd packer.nvim]]
-- vim.cmd [[packadd coc.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
--  use 'neoclide/coc.nvim'

  use 'navarasu/onedark.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  use('mbbill/undotree')


  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use('lukas-reineke/indent-blankline.nvim')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use{
    'ray-x/lsp_signature.nvim',
    config = function()
      require('lsp_signature').setup({
        floating_window = false,
        hint_prefix = "H: "
      })
    end
  }

  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup { icons = false }
    end
  }

  use {
    'ray-x/go.nvim',
    config = function()
      require('go').setup()
    end
  }

  use 'ray-x/guihua.lua'

end)
