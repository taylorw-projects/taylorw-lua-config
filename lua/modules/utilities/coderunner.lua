M = {}

M.setup = function()
    require("code_runner").setup({
        filetype = {
            python = "python3 -u",
            rust = "cargo run",
        }
    })
end

return M
