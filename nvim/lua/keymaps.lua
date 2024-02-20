-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
-- Set global leader
vim.g.mapleader = " "

-- x and X does not copy to clipboard
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'X', '"_d')

-----------------
-- Normal mode --
-----------------

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------
-- Dont use the ones below yet
-- Hint: start visual mode with the same area as the previous area and the same mode
--vim.keymap.set('v', '<', '<gv', opts)
--vim.keymap.set('v', '>', '>gv', opts)

