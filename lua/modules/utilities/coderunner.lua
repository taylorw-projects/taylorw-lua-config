require("code_runner").setup({
    filetype = {
        python = "python3 -u",
        rust = "cargo run",
    }
})

vim.keymap.set('n', '<C-k>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<C-k>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<C-k>crp', ':CRProjects<CR>', { noremap = true, silent = false })
