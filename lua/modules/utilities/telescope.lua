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
        projects              = {
            theme = "dropdown",
        },
    },
})

require("telescope").load_extension("harpoon")
require("telescope").load_extension("zoxide")
require("telescope").load_extension("projects")

vim.keymap.set("n", "gz",
    "<cmd>lua require('telescope').extensions.zoxide.list(require('telescope.themes').get_dropdown({}))<cr>")
vim.keymap.set("n", "gG",
    "<cmd>lua require('telescope.builtin').git_status(require('telescope.themes').get_dropdown({}))<cr>")
vim.keymap.set("n", "gf", "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set("n", "gp", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set("n", "gb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set("n", "gh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
