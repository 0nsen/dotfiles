vim.g.mapleader = " "

-- Movement between windows
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Switch jumplist cursor motion
vim.keymap.set('n', '<C-o>', '<C-i>')
vim.keymap.set('n', '<C-i>', '<C-o>')

-- Center the cursor when moving up down
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')
vim.keymap.set('n', '<C-f>', '<C-f>zz')
