return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lua'},
			{'saadparwaiz1/cmp_luasnip'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	},
	{
		"folke/which-key.nvim",
		lazy = true,
	},
	{
		"folke/neoconf.nvim",
		cmd = "Neoconf" },
	"folke/neodev.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		options = { theme = "catppuccin"},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
--		config = function()
--			local configs = require("nvim-treesitter.configs")
--
--			configs.setup({
--				ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html"},
--				sync_install = false,
--				highlight = { enable = true },
--				indent = { enable = true },
--			})
--		end
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{"lewis6991/gitsigns.nvim"},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- ensures this loads before other plugins
		init = function()
			vim.cmd.colorscheme 'gruvbox'
			vim.cmd.hi 'Comment gui=none'
		end,
	},
}
