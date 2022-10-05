-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local telescope = require("telescope.builtin")
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", telescope.diagnostics, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
---@diagnostic disable-next-line: unused-local
local on_attach = function(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", telescope.lsp_definitions, bufopts)
    vim.keymap.set("n", "gt", telescope.lsp_type_definitions, bufopts)
    vim.keymap.set("n", "gs", telescope.lsp_document_symbols, bufopts)
    vim.keymap.set("n", "gS", telescope.lsp_workspace_symbols, bufopts)
    vim.keymap.set("n", "<space>i", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gi", telescope.lsp_implementations, bufopts)
    vim.keymap.set("n", "gv", ":vsplit<CR><C-w>l<CMD>lua vim.lsp.buf.definition()<CR>", bufopts)
    vim.keymap.set("n", "gV", ":vsplit<CR><C-w>l<CMD>lua vim.lsp.buf.declaration()<CR>", bufopts)
    vim.keymap.set("n", "gr", telescope.lsp_references, bufopts)
    vim.keymap.set("n", "<space>I", vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set("n", "<space>d", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<space>ca", ":CodeActionMenu<CR>", bufopts)
    vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}
require("lspconfig")["jsonls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})
require("lspconfig")["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})
require("lspconfig")["tsserver"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})
require("lspconfig").sumneko_lua.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        Lua = {
            runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
            completion = { keywordSnippet = "Disable", },
            diagnostics = { enable = true, globals = {
                "vim", "describe", "it", "before_each", "after_each"
            },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                }
            }
        }
    }
}
require("lspconfig")["terraform_lsp"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})
require("lspconfig")["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = {
                command = "clippy",
            }
        }
    }
})

-- autoformat on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
