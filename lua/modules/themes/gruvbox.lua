local M = {}

M.setup = function()
    vim.g.gruvbox_baby_telescope_theme = 1
    vim.g.background_color = 'dark'
    vim.cmd [[colorscheme gruvbox-baby]]
end

return M
