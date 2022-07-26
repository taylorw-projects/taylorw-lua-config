-- setup with default options
require("nvim-tree").setup({
    sync_root_with_cwd = true,
    open_on_setup = true,
    open_on_setup_file = true,
    auto_reload_on_write = true,
})

-- assign keybinds
vim.keymap.set("n", "<leader>N", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>nn", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>nc", ":NvimTreeCollapse<CR>")
