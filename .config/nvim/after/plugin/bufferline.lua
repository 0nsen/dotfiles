local bufferline = require('bufferline')

bufferline.setup({
    options = {
        mode = 'tabs',
        diagnostics = 'nvim_lsp',
        offsets = {
            {
                filetype = 'NvimTree',
                text = 'NvimTree',
                highlight = 'Directory',
                separator = true,
            }
        },
        numbers = 'ordinal',
    }
})

vim.keymap.set('n', '<C-1>', function() bufferline.go_to(1, true) end)
vim.keymap.set('n', '<C-2>', function() bufferline.go_to(2, true) end)
vim.keymap.set('n', '<C-3>', function() bufferline.go_to(3, true) end)
vim.keymap.set('n', '<C-4>', function() bufferline.go_to(4, true) end)

vim.keymap.set('n', '<C-.>', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-,>', '<Cmd>BufferLineCyclePrev<CR>')
