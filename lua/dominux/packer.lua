-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use{
		  'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		"lunarvim/synthwave84.nvim",
		as = "synthwave84",
		config = function() 
			vim.cmd.colorscheme('synthwave84')
		end
	})

	use 'tpope/vim-surround'
	use 'haya14busa/vim-easymotion'

	use 'windwp/nvim-autopairs'

	use {
		"terrortylor/nvim-comment",
		config = function() require("nvim_comment").setup {} end
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- use 'nvim-treesitter/playground'
	use 'ThePrimeagen/harpoon'

	-- LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

end)

