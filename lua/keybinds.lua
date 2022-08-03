-- Vim configuration hotkeys
vim.keymap.set("n", "<leader>gV", ":e ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", "<leader>gP", ":e ~/.config/nvim/lua/plugins.lua<cr>")
vim.keymap.set("n", "<leader>gL", ":e ~/.config/nvim/lua<cr>")
vim.keymap.set("n", "<leader>gN", ":e ~/.config/nvim<cr>")

-- New terminal in split
vim.keymap.set("n", "<leader>gt", "<C-W>s<C-W>j:ter<cr>:resize 20<cr>:setlocal nonumber<cr>a")
vim.keymap.set("n", "<leader>gT", "<C-W>v<C-W>l:ter<cr>:setlocal nonumber<cr>a")

-- pull up 3 windows
vim.keymap.set("n", "<leader>g3", "<C-W>v<C-W>v")

-- pull up 4 windows
vim.keymap.set("n", "<leader>g4", "<C-W>v<C-W>s<C-W>l<C-W>s<C-W>h")

-- Remap window navigation
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-l>", "<C-W>l")

-- Remap window navigation terminal
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-W>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-W>k")
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-W>h")
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-W>l")
vim.keymap.set("t", "<C-q>", "<C-\\><C-N><C-W>c")
