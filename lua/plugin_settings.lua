require'snippets'.use_suggested_mappings()

require'nvim-treesitter.configs'.setup {
    rainbow = {
        enable = true
    }
}
require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true
    }
}
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    }
}

vim.g.tagbar_autofocus = 0
vim.g.tagbar_width = 50
vim.g.tagbar_position = "left"
vim.api.nvim_command([[
autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
]])
