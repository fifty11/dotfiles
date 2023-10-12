vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'


	use
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}



	use 'robert-oleynik/clangd-nvim'
	use 'LuaLS/lua-language-server'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
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
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
}
	use 'morhetz/gruvbox'
	use 'LunarVim/darkplus.nvim'
  end)
