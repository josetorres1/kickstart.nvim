keymap = vim.keymap
keymap.set('i', 'jk', '<esc>:w<cr>', { desc = 'Exit insert mode with jk and save' })
keymap.set('i', 'jj', '<esc>', { desc = 'Exit insert mode with jj' })
