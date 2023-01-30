-- setup with default options
M = {}

M.setup = function()
    require("nvim-tree").setup({
        sync_root_with_cwd = true,
        auto_reload_on_write = true,
    })
end

return M
