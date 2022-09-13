require("telescope").setup()

require("telescope").load_extension("harpoon")
require("telescope").load_extension("zoxide")
vim.keymap.set("n", "<leader>fz", "<cmd>lua require('telescope').extensions.zoxide.list()<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
