M = {}

M.setup = function()

    local status_ok, alpha = pcall(require, "alpha")

    if not status_ok then
        return
    end

    local dashboard = require "alpha.themes.dashboard"

    dashboard.section.header.val = {
        [[                           @@@@@@@@@@@@                          ]],
        [[                    @@@@@@@@@@@@@@@@@@@@@@@@@@                   ]],
        [[                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@               ]],
        [[             @@@@@@@@@@                    @@@@@@@@@@            ]],
        [[          @@@@@@@@@                            @@@@@@@@@         ]],
        [[        @@@@@@@@                                  @@@@@@@@       ]],
        [[       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      ]],
        [[      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@      ]],
        [[     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%      ]],
        [[    @@@@@@         @@@@@@@@@@@@                @@@@@@@@@@@@      ]],
        [[    @@@@@          @@@@@@@@@@@@                 @@@@@@@@@@@      ]],
        [[@@@@@@@@@@@@@@     @@@@@@@@@@@@                @@@@@@@@@@@@      ]],
        [[ @@@@@@@@@@@       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       ]],
        [[  %@@@@@@@         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.        ]],
        [[    @@@@           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        ]],
        [[     @             @@@@@@@@@@@@             @@@@@@@@@@@@@@       ]],
        [[                   @@@@@@@@@@@@              @@@@@@@@@@@@@@      ]],
        [[                   @@@@@@@@@@@@               @@@@@@@@@@@@@@     ]],
        [[@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@]],
        [[ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@ ]],
        [[   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            @@@@@@@@@@@   ]],
    }

    dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("p", "  Find project",
            "<cmd>lua require('telescope').extensions.projects.projects(require('telescope.themes').get_dropdown({}))<cr>"),
        dashboard.button("z", "  Find with zoxide",
            "<cmd>lua require('telescope').extensions.zoxide.list(require('telescope.themes').get_dropdown({}))<cr>"),
        dashboard.button("b", "  Find with File Browser",
            "<cmd>lua require('telescope').extensions.file_browser.file_browser(require('telescope.themes').get_dropdown({}))<cr>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    local function footer()
        -- Number of plugins
        local datetime = os.date "%d-%m-%Y %H:%M:%S"
        local plugins_text = "   "
            .. " plugins"
            .. "   v"
            .. vim.version().major
            .. "."
            .. vim.version().minor
            .. "."
            .. vim.version().patch
            .. "   "
            .. datetime

        -- Quote
        local fortune = require "alpha.fortune"
        local quote = table.concat(fortune(), "\n")

        return plugins_text .. "\n" .. quote
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
end

return M
