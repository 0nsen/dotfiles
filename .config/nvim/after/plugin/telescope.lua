local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gw', builtin.grep_string, {})

vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})

telescope.setup({ -- SAVE SELECTED ITEMS (VIA TAB) TO QUICKFIX LIST
	defaults = {
		mappings = {
			n = {
				['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist
			}
		}
	}
})
