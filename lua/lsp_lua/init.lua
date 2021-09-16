-- Your custom attach function for nvim-lspconfig goes here.
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<leader>fd',        '<cmd>Telescope lsp_definitions<cr>', opts)
    buf_set_keymap('n', '<leader>fr',        '<cmd>Telescope lsp_references<cr>', opts)
    buf_set_keymap('n', '<leader>fs',        '<cmd>Telescope lsp_document_symbols<cr>', opts)
    buf_set_keymap('n', '<leader>fw',        '<cmd>Telescope lsp_workspace_symbols<cr>', opts)

    require "lsp_signature".on_attach({
        bind = true, -- This is mandatory, otherwise border config won't get registered.
        handler_opts = {
            border = "single"
        }
    })
end

local nvim_lsp = require'lspconfig'

--
if vim.fn.has('win32') then
    nvim_lsp.rust_analyzer.setup({
        on_attach=on_attach,
        settings = {
            ["rust-analyzer"] = {
                procMacro = {
                    enable = true
                },
                cargo = {
                    loadOutDirsFromCheck = true
                },
                checkOnSave = {
                    command = 'clippy',
                    enable = true
                },
            }
        }
    })
    nvim_lsp.tsserver.setup{ on_attach=on_attach }
    nvim_lsp.pyright.setup{ on_attach=on_attach }
    -- nvim_lsp.clangd.setup{ on_attach=on_attach }
else
    local function setup_servers()
        require'lspinstall'.setup()
        local servers = require'lspinstall'.installed_servers()
        for _, server in pairs(servers) do
            require'lspconfig'[server].setup({
                on_attach=on_attach,
                settings = {
                    ["rust-analyzer"] = {
                        procMacro = {
                            enable = true
                        },
                        cargo = {
                            loadOutDirsFromCheck = true
                        },
                        checkOnSave = {
                            command = 'clippy',
                            enable = true
                        },
                    }
                }
            })
        end
    end
    setup_servers()
    require'lspinstall'.post_install_hook = function ()
        setup_servers() -- reload installed servers
        vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
    end
end
--

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		update_in_insert = true,
	}
)
