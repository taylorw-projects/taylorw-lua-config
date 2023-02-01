local M = {}

M.setup = function()
    require('telescope').setup({
        pickers = {
            find_files            = {
                theme = 'dropdown',
            },
            live_grep             = {
                theme = 'dropdown',
            },
            buffers               = {
                theme = 'dropdown',
            },
            help_tags             = {
                theme = 'dropdown',
            },
            diagnostics           = {
                theme = 'dropdown',
            },
            lsp_definitions       = {
                theme = 'dropdown',
            },
            lsp_type_definitions  = {
                theme = 'dropdown',
            },
            lsp_document_symbols  = {
                theme = 'dropdown',
            },
            lsp_workspace_symbols = {
                theme = 'dropdown',
            },
            lsp_implementations   = {
                theme = 'dropdown',
            },
            lsp_references        = {
                theme = 'dropdown',
            },
            projects              = {
                theme = 'dropdown',
            },
            git_status            = {
                theme = 'dropdown'
            }
        },
    })
    require('telescope').load_extension('harpoon')
    require('telescope').load_extension('zoxide')
    require('telescope').load_extension('projects')
    require('telescope').load_extension('file_browser')
end

return M
