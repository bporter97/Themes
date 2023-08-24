-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'folke/tokyonight.nvim',
	  lazy = false,
	  config = function()
		  vim.cmd('colorscheme tokyonight-storm')
	  end
	})

  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use('mbbill/undotree')
  use {
  	'VonHeikemen/lsp-zero.nvim',
 	 branch = 'v2.x',
  	 requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{'williamboman/mason.nvim'},           -- Optional
    	{'williamboman/mason-lspconfig.nvim'}, -- Optional

    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'},
    	{'hrsh7th/cmp-nvim-lsp'}, -- Required
    	{'L3MON4D3/LuaSnip'},     -- Required
  	}
  }
use('tpope/vim-fugitive')
end)
