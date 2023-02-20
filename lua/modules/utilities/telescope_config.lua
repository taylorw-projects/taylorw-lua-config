local M = {}


M.setup = function()
    require('telescope').load_extension('harpoon')
    require('telescope').load_extension('zoxide')
    require('telescope').load_extension('projects')

    local fb_actions = require('telescope').extensions.file_browser.actions

    require('telescope').setup({
        defaults = {
            borderchars = {
                prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
                results = { " " },
                preview = { " " },
            }
        },
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
        extensions = {
            file_browser = {
                mappings = {
                    ['i'] = {
                        ['C-w'] = fb_actions.change_cwd,
                        ['C-t'] = fb_actions.goto_cwd
                    },
                    ['n'] = {
                        ['w'] = fb_actions.change_cwd,
                        ['t'] = fb_actions.goto_cwd
                    }
                }
            }
        }
    })
end

return M
