-- Vim configuration hotkeys
vim.keymap.set("n", "<leader>gV", ":e ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", "<leader>gP", ":e ~/.config/nvim/lua/plugins.lua<cr>")
vim.keymap.set("n", "<leader>gL", ":e ~/.config/nvim/lua<cr>")
vim.keymap.set("n", "<leader>gN", ":e ~/.config/nvim<cr>")

-- New terminal in split
vim.keymap.set("n", "<C-w>t", "<C-W>s<C-W>j:ter<cr>:resize 20<cr>:setlocal nonumber<cr>a")
vim.keymap.set("n", "<C-w>T", "<C-W>v<C-W>l:ter<cr>:setlocal nonumber<cr>a")

-- pull up 3 windows
vim.keymap.set("n", "<C-w>3", "<C-W>v<C-W>v<C-W>l<C-w>h:enew<cr><C-w>l<C-w>l:enew<cr><C-w>h")

-- pull up 4 windows
vim.keymap.set("n", "<C-w>4", "<C-W>v<C-W>s<C-W>l<C-W>s<C-W>h")

-- clear left and right buffers
vim.keymap.set("n", "<C-w>1", "<C-w>h:enew<cr><C-w>l<C-w>l:enew<cr><C-w>h")

-- go to last buffer
vim.keymap.set("n", "<leader>gb", ":e ~/.config/nvim/init.lua<cr>")

-- Remap window navigation
-- vim.keymap.set("n", "<C-j>", "<C-W>j")
-- vim.keymap.set("n", "<C-k>", "<C-W>k")
-- vim.keymap.set("n", "<C-h>", "<C-W>h")
-- vim.keymap.set("n", "<C-l>", "<C-W>l")

-- Remap window navigation terminal
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-W>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-W>k")
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-W>h")
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-W>l")
vim.keymap.set("t", "<C-q>", "<C-\\><C-N><C-W>c")

-- Copy, Cut, Paste to/from clipboard
vim.keymap.set("v", "<space>y", '"*y')
vim.keymap.set("v", "<space>d", '"*d')
vim.keymap.set("n", "<space>p", '"+p')
vim.keymap.set("n", "<space>s", ':w<cr>')
