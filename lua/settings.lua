local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'shiftwidth', indent)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'showcmd', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true)
utils.opt('w', 'colorcolumn', '100')
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'laststatus', 2)
utils.opt('o', 'autoindent', true)
utils.opt('w', 'wrap', false)
utils.opt('w', 'numberwidth', 5)
utils.opt('w', 'list', true)
utils.opt('w', 'signcolumn', 'yes')
utils.opt('w', 'foldmethod', 'expr')
utils.opt('w', 'foldexpr', 'nvim_treesitter#foldexpr()')

-- nvim tree
vim.g.nvim_tree_follow = 1
-- vim.g.nvim_tree_update_cwd = 1
-- vim.g.nvim_tree_auto_open = 1
-- vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1

-- rust fmt
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 0

-- nvim tree
vim.g.nvim_tree_side = 'right'
vim.g.nvim_tree_width = 45
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

vim.g.python3_host_prog = 'C:/Python39/python.exe'
-- vim.o.guifont = 'Hack NF'
-- vim.api.nvim_set_keymap(
--   'n',
--   '<leader>z',
--   ":lua require'centerpad'.toggle{ leftpad = 50 }<cr>",
--   { noremap = true, silent = true })

-- vim.api.nvim_exec(
-- [[
-- let g:tagbar_autofocus=0
-- let g:tagbar_width=50
-- let g:tagbar_position="right"
-- autocmd BufEnter *.py,*.rs,*.c*,*.h* :call tagbar#autoopen(0)
-- autocmd BufWinLeave *.py,*.rs,*.c*,*.h* :TagbarClose
-- nnoremap <Leader>x :TagbarToggle<CR>'
-- ]], true)

vim.cmd 'hi ActiveWindow ctermbg=None ctermfg=None guibg=#212121'
vim.cmd 'hi InactiveWindow guibg=#424242'
vim.cmd 'set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow'
