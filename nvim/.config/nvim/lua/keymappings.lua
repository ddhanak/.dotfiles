local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape

-- Vim Fugitive
utils.map('n', '<leader>gs', '<Esc>:Git<CR>')

-- Nvim Tree
utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Easy Align
-- TODO: those mappings do not work yet
utils.map('x', 'ga', ':EasyAlign')
utils.map('n', 'ga', ':EasyAlign')

