require('gitsigns').setup({
	current_line_blame = true,
})

vim.keymap.set('n', ']h', '<Cmd>Gitsigns next_hunk<CR>')
vim.keymap.set('n', '[h', '<Cmd>Gitsigns prev_hunk<CR>')
