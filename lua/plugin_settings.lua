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

vim.api.nvim_command([[
autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
]])
