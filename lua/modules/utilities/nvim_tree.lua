-- setup with default options
M = {}

M.setup = function()
    require("nvim-tree").setup({
        sync_root_with_cwd = true,
        open_on_setup = true,
        open_on_setup_file = true,
        auto_reload_on_write = true,
    })
end

return M
