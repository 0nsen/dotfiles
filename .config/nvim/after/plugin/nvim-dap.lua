local dapui = require('dapui')
local dap = require('dap')

require('dapui').setup()

-- DAP CONFIG FOR JAVASCRIPT --
dap.adapters['pwa-node'] = {
	type = 'server',
	host = 'localhost',
	port = '${port}',
	executable = {
		command = 'node',
		args = {'/opt/js-debug/src/dapDebugServer.js', '${port}'},
	}
}
dap.configurations.javascript = {
	{
		type = 'pwa-node',
		request = 'launch',
		name = 'Launch file',
		program = '${file}',
		cwd = '${workspaceFolder}',
	}
}
-- END --

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

vim.keymap.set('n', '<leader>dt', function() dapui.toggle() end)
vim.keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<leader>dc', function() dap.continue() end)
vim.keymap.set('n', '<leader>dso', function() dap.step_over() end)
vim.keymap.set('n', '<leader>dsi', function() dap.step_into() end)
