local utils = require('utils')

utils.map('n', '<C-l>',             '<cmd>noh<CR>') -- clear highlights
utils.map('n', '<leader>n',         ':NvimTreeToggle<CR>')
utils.map('n', '<leader>x',         ':TagbarToggle<CR>')

utils.map('n', '<leader><space>',   '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>ff',        '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>b',         '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh',        '<cmd>Telescope help_tags<cr>')
