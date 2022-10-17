require("telescope").setup({
    pickers = {
        find_files            = {
            theme = "dropdown",
        },
        live_grep             = {
            theme = "dropdown",
        },
        buffers               = {
            theme = "dropdown",
        },
        help_tags             = {
            theme = "dropdown",
        },
        diagnostics           = {
            theme = "dropdown",
        },
        lsp_definitions       = {
            theme = "dropdown",
        },
        lsp_type_definitions  = {
            theme = "dropdown",
        },
        lsp_document_symbols  = {
            theme = "dropdown",
        },
        lsp_workspace_symbols = {
            theme = "dropdown",
        },
        lsp_implementations   = {
            theme = "dropdown",
        },
        lsp_references        = {
            theme = "dropdown",
        },
    },
})

require("telescope").load_extension("harpoon")
require("telescope").load_extension("zoxide")
vim.keymap.set("n", "<leader>fz",
    "<cmd>lua require('telescope').extensions.zoxide.list(require('telescope.themes').get_dropdown({}))<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- TODO: Remove when Telescope fixes their shit
vim.api.nvim_create_autocmd('BufRead', {
    callback = function()
        vim.api.nvim_create_autocmd('BufWinEnter', {
            once = true,
            command = 'normal! zx'
        })
    end
})
