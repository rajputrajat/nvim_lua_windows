return require('packer').startup(function()

    use {'wbthomason/packer.nvim', opt = true}

    use { 'neovim/nvim-lspconfig' }

    if not vim.fn.has('win32') then
        use { 'kabouzeid/nvim-lspinstall' }
    end

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
    use { 'hrsh7th/nvim-compe' }
    -- use { 'hrsh7th/vim-vsnip' }
    -- use { 'hrsh7th/vim-vsnip-integ' }
    use { 'windwp/nvim-autopairs' }
    use { 'windwp/nvim-ts-autotag' }
    use { 'simrat39/rust-tools.nvim' }
    use { 'ray-x/lsp_signature.nvim' }
    use { 'simrat39/symbols-outline.nvim' }
    use { 'folke/twilight.nvim' }
    use { 'sainnhe/sonokai' }

end)
