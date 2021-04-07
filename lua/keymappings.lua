local utils = require('utils')

utils.map('n', '<C-l>',             '<cmd>noh<CR>') -- clear highlights
utils.map('n', '<leader>n',         ':NvimTreeToggle<CR>')
utils.map('n', '<leader>x',         ':TagbarToggle<CR>')

utils.map('n', '<leader><space>',   '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>ff',        '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>b',         '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh',        '<cmd>Telescope help_tags<cr>')

-- utils.map('t', '<A-h>'              '<C-\\><C-N><C-w>h')
-- utils.map('t', '<A-j>'              '<C-\\><C-N><C-w>j')
-- utils.map('t', '<A-k>'              '<C-\\><C-N><C-w>k')
-- utils.map('t', '<A-l>'              '<C-\\><C-N><C-w>l')
-- utils.map('i', '<A-h>'              '<C-\\><C-N><C-w>h')
-- utils.map('i', '<A-j>'              '<C-\\><C-N><C-w>j')
-- utils.map('i', '<A-k>'              '<C-\\><C-N><C-w>k')
-- utils.map('i', '<A-l>'              '<C-\\><C-N><C-w>l')
-- utils.map('n', '<A-h>'              '<C-w>h')
-- utils.map('n', '<A-j>'              '<C-w>j')
-- utils.map('n', '<A-k>'              '<C-w>k')
-- utils.map('n', '<A-l>'              '<C-w>l')
