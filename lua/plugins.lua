return require('packer').startup(function()

    use {'wbthomason/packer.nvim', opt = true}
    use {'sainnhe/gruvbox-material'}
    use { 'srcery-colors/srcery-vim' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use { 'neovim/nvim-lspconfig' }
    -- use { 'glepnir/lspsaga.nvim' }
    use { 'nvim-lua/completion-nvim' }
    use { 'nvim-lua/diagnostic-nvim' }
    use { 'nvim-lua/lsp_extensions.nvim' }
    use { 'hoob3rt/lualine.nvim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'rust-lang/rust.vim' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'tpope/vim-commentary' }
    use { 'thaerkh/vim-indentguides' }
    use { 'p00f/nvim-ts-rainbow' }

end)
