return require('packer').startup(function()

    use {'wbthomason/packer.nvim', opt = true}

    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-lua/lsp_extensions.nvim' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use { 'hoob3rt/lualine.nvim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'rust-lang/rust.vim' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'tpope/vim-commentary' }
    use { 'thaerkh/vim-indentguides' }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'norcalli/snippets.nvim' }
    use { 'tjdevries/colorbuddy.nvim' }
    use { 'tjdevries/gruvbuddy.nvim' }
    use { 'hrsh7th/nvim-compe' }
    use { 'windwp/nvim-autopairs' }
    use { 'smithbm2316/centerpad.nvim' }

    -- use { 'junegunn/goyo.vim' }
    -- use { 'honza/vim-snippets' }
    -- use { 'ray-x/lsp_signature.nvim' }
    -- use { 'mtdl9/vim-log-highlighting' }

end)
