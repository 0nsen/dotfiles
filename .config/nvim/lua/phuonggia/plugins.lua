-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use "rebelot/kanagawa.nvim"

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use "lukas-reineke/indent-blankline.nvim"

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{'williamboman/mason.nvim', tag = 'v1.11.0'}, -- temp workaround mason breaking changes
			{'williamboman/mason-lspconfig.nvim', tag = 'v1.32.0'}, -- temp workaround mason breaking changes

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	-- some of the packages require this
	use 'nvim-tree/nvim-web-devicons'

	use 'nvim-lualine/lualine.nvim'

	use 'nvim-tree/nvim-tree.lua'

	use 'akinsho/bufferline.nvim' 

	use 'tpope/vim-fugitive'

	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}

	use 'lewis6991/gitsigns.nvim'

	use "epwalsh/obsidian.nvim"

	use 'mfussenegger/nvim-dap'
	use { 
		"rcarriga/nvim-dap-ui",
		requires = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio"
		}
	}

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})

	use 'sainnhe/everforest'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'JoosepAlviste/nvim-ts-context-commentstring' -- FOR MULTIPLE LANGUAGES IN ONE FILE

	use 'github/copilot.vim'
	use 'CopilotC-Nvim/CopilotChat.nvim'

	use 'mbbill/undotree'
end)
