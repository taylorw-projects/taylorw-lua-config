-- setup with default options
require("nvim-tree").setup({
    sync_root_with_cwd = true
})

-- assign keybinds
vim.keymap.set("n", "<C-k>N", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-k>n", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-k>nn", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-k>nt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-k>nf", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<C-k>nc", ":NvimTreeCollapse<CR>")
