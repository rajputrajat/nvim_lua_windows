local utils = require('utils')

utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')

utils.map('i', '<Tab>',         'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
utils.map('i', '<S-Tab>',       'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})

vim.api.nvim_command([[
set shortmess+=c
]])

require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;
    source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        snippets = true;
        -- nvim_treesitter = true; => as per documentation, it is sometimes very slow
        -- tags = true;
    };
}
