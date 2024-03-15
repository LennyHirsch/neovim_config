-- my_rust_plugin.lua
local function rustyllama()
	local vstart = vim.fn.getpos("'<")
	local vend = vim.fn.getpos("'>")
	local line_start = vstart[2]
	local line_end = vend[2]
	local lines = vim.fn.getline(line_start, line_end)

	-- Run the rust binary with the given arguments
	local command = "rustyllama.exe" .. lines
	local handle = io.popen(command, 'r')
	local output = handle:read('*a')
	handle:close()

	-- Replace the current line with the return value of the rust binary
	vim.cmd("normal! V")
	vim.cmd("normal! P")
	vim.cmd("startinsert!")
end

-- Register the plugin function as a command
vim.api.nvim_set_keymap('v', '<leader>d', 'lua: rustyllama()<CR>', {})
