local utils = require('utils')

utils.map('n', '<C-l>',             '<cmd>noh<CR>') -- clear highlights
utils.map('n', '<leader>n',         ':NvimTreeToggle<CR>')

utils.map('n', '<leader><space>',   '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>ff',        '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>g',        '<cmd>Telescope grep_string<cr>')
utils.map('n', '<leader>b',         '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh',        '<cmd>Telescope help_tags<cr>')
utils.map('n', '<leader>l',         '<cmd>Telescope current_buffer_fuzzy_find<cr>')
utils.map('n', '<leader>L',         '<cmd>Telescope loclist<cr>')
utils.map('n', '<leader>k',         '<cmd>Telescope keymaps<cr>')
utils.map('n', '<leader>r',         '<cmd>Telescope registers<cr>')
utils.map('n', '<leader>m',         '<cmd>Telescope marks<cr>')
utils.map('n', '<leader>c',         '<cmd>Telescope commands<cr>')

local fd_cond = vim.fn.mapcheck('<leader>fd') == ''
local fr_cond = vim.fn.mapcheck('<leader>fr') == ''
local fs_cond = vim.fn.mapcheck('<leader>fs') == ''
local fw_cond = vim.fn.mapcheck('<leader>fw') == ''

if (fd_cond or fr_cond or fs_cond or fw_cond) then
    utils.map('n', '<leader>fd',         '<cmd>Telescope treesitter<cr>')
    utils.map('n', '<leader>fr',         '<cmd>Telescope treesitter<cr>')
    utils.map('n', '<leader>fs',         '<cmd>Telescope treesitter<cr>')
    utils.map('n', '<leader>fw',         '<cmd>Telescope treesitter<cr>')
end

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
