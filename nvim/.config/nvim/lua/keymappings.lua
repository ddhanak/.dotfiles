local utils = require('utils')

-- Regular stuff
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape

-- Telescope
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')

-- Vim Fugitive
utils.map('n', '<leader>gs', '<Esc>:Git<CR>')

-- Nvim Tree
utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Easy Align
utils.map('n', 'ga', '<Plug>(EasyAlign)', {})
utils.map('x', 'ga', '<Plug>(EasyAlign)', {})
