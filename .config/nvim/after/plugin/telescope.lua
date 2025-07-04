local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>bg', builtin.current_buffer_fuzzy_find, {})

vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>mk', builtin.marks, {})

vim.keymap.set('n', '<leader>bf', builtin.buffers, {})

telescope.setup {
	defaults = {
		layout_strategy = 'flex',
	},
}
