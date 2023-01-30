M = {}

M.setup = function()
    local on_attach = require('keybinds').lsp_on_attach

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lsp_flags = {
        -- This is the default in Nvim 0.7+
        debounce_text_changes = 150,
    }
    require('lspconfig')['gopls'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    })
    require('lspconfig')['jsonls'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    })
    require('lspconfig')['pyright'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    })
    require('lspconfig')['tsserver'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    })
    require('lspconfig')['sumneko_lua'].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
        settings = {
            Lua = {
                runtime = { version = 'LuaJIT', path = vim.split(package.path, ';'), },
                completion = { keywordSnippet = 'Disable', },
                diagnostics = { enable = true, globals = {
                    'vim', 'describe', 'it', 'before_each', 'after_each'
                },
                },
                workspace = {
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                    }
                }
            }
        }
    }
    require('lspconfig')['terraform_lsp'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
    })
    require('lspconfig')['rust_analyzer'].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags,
        settings = {
            ['rust-analyzer'] = {
                checkOnSave = {
                    command = 'clippy',
                }
            }
        }
    })

    -- autoformat on save
    vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
end

return M
