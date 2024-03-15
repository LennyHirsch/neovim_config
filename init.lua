-- Bookmark ~a to find bottom of Lazy plugin setup

-- BASIC SETUP
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable nerd fonts
vim.g.have_nerd_font = true

-- Enable default line numbers
vim.opt.number = true

-- Enable mouse input
vim.opt.mouse = 'a'

-- Don't show mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
-- vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure out certain whitespace characters will be displayed
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.opt.inccommand = 'split'

--Show which line your cursor is on
vim.opt.cursorline = true

-- Minimum number of screen lines to keep above or below cursor
vim.opt.scrolloff = 10

-- BASIC KEYMAPS
-- Set highlight on search, but clear on pressing Esc in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Telescope filebrowser
vim.keymap.set('n', '<space>fb', ':Telescope file_browser<CR>')

-- Easier split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc='Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc='Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc='Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc='Move focus to the upper window' })

-- BOOTSTRAP LAZY
require "lazy-config"
require "lsp-config"
require "whichkey"
require "keymaps"
require "options"
require("telescope").setup()
require("lualine").setup()
require("mason").setup()
require 'rustyllama'
-- BUGGED: Don't know why, but treesitter doesn't play nice. Throws errors at each startup, fucks with everything... >:(
--require('nvim-treesitter.configs').setup {
--	-- A directory to install the parsers into.
--	parser_install_dir = "C:/Users/Lenny/AppData/Local/nvim/parsers",
--
--	-- A list of parser names, or "all"
--	ensure_installed = { "rust", "python"},
--
--	-- Install parsers synchronously (only applied to ensure_installed)
--	sync_install = false,
--
--	-- Automatically install missing parsers when entering buffer
--	auto_install = false,
--
--	highlight = {
--		enable = true, -- false will disable the whole extension
--
--		-- setting this to true will run :h syntax and tree-sitter at the same time.
--		-- set this to true if you depend on syntax being enabled (like for indentation).
--		-- using this option may slow down your editor, and you may see some duplicate highlights.
--		-- instead of true it can also be a list of languages
--		additional_vim_regex_highlighting = false,
--	},
--}
--vim.opt.runtimepath:append("C:/Users/Lenny/AppData/Local/nvim/parsers")
