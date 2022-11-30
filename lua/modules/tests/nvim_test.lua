require('nvim-test').setup {
    run = true, -- run tests (using for debug)
    commands_create = true, -- create commands (TestFile, TestLast, ...)
    filename_modifier = ":.", -- modify filenames before tests run(:h filename-modifiers)
    silent = false, -- less notifications
    term = "terminal", -- a terminal to run ("terminal"|"toggleterm")
    termOpts = {
        direction = "horizontal", -- terminal's direction ("horizontal"|"vertical"|"float")
        width = 96, -- terminal's width (for vertical|float)
        height = 24, -- terminal's height (for horizontal|float)
        go_back = false, -- return focus to original window after executing
        stopinsert = "auto", -- exit from insert mode (true|false|"auto")
        keep_one = true, -- keep only one terminal for testing
    },
    runners = { -- setup tests runners
        cs = "nvim-test.runners.dotnet",
        go = "nvim-test.runners.go-test",
        haskell = "nvim-test.runners.hspec",
        javacriptreact = "nvim-test.runners.jest",
        javascript = "nvim-test.runners.jest",
        lua = "nvim-test.runners.busted",
        python = "nvim-test.runners.pytest",
        ruby = "nvim-test.runners.rspec",
        rust = "nvim-test.runners.cargo-test",
        typescript = "nvim-test.runners.jest",
        typescriptreact = "nvim-test.runners.jest",
    }
}

-- Set keymaps for nvim-test
vim.keymap.set("n", "<C-k>ts", ":TestSuite<CR>", { silent = true })
vim.keymap.set("n", "<C-k>tf", ":TestFile<CR>", { silent = true })
vim.keymap.set("n", "<C-k>te", ":TestEdit<CR>", { silent = true })
vim.keymap.set("n", "<C-k>tt", ":TestNearest<CR>", { silent = true })
vim.keymap.set("n", "<C-k>tl", ":TestLast<CR>", { silent = true })
vim.keymap.set("n", "<C-k>tv", ":TestVisit<CR>", { silent = true })
vim.keymap.set("n", "<C-k>ti", ":TestInfo<CR>", { silent = true })
