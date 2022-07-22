-- Set keymaps for NERDTree
vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<C-n>", ":NERDTree<CR>")
vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")

-- Start NERDTree at startup if no filename specified
vim.api.nvim_create_autocmd("StdinReadPre", {
	pattern = "*",
	command = [[let s:std_in=1]],
})
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	command = [[if argc() == 0 && !exists("s:std_in") | NERDTree | endif]],
})
