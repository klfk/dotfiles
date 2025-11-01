-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	-- Colorscheme
	use ({
		'slugbyte/lackluster.nvim',
		config = function()
			vim.cmd.colorscheme('lackluster')
		end
	})
	
	-- LSP Configuration
	use('neovim/nvim-lspconfig')
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	
	-- Autocompletion
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-cmdline')
	
	-- Snippets
	use('L3MON4D3/LuaSnip')
	use('saadparwaiz1/cmp_luasnip')
	
	-- LSP Progress UI
	use('j-hui/fidget.nvim')
	
	-- Formatting
	use('stevearc/conform.nvim')
	
	-- Other plugins
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('jiaoshijie/undotree')
	use('tpope/vim-fugitive')
	use('stevearc/oil.nvim')
	use('github/copilot.vim')
end)
