-- Set keymaps for vim-test
vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { silent = true })
vim.keymap.set("n", "<leader>tT", ":TestFile<CR>", { silent = true })
vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { silent = true })
vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { silent = true })

-- test strategy
vim.g["test#strategy"] = "neovim"
