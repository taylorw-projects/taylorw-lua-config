require('gitsigns').setup {
    on_attach = function(bufnr)
        -- import keybinds
        require('keybinds').gitsigns_on_attach(bufnr)
    end
}
