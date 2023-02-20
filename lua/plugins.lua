local Plug = require('utils.plug')

Plug.begin()
---------------------------=== Language Server Config ===---------------------------
-- Baseline LSP config
Plug('neovim/nvim-lspconfig', {
    config = function()
        require('modules.lsp.config').setup()
    end,
})
-- Autocompletion plugin
Plug('hrsh7th/nvim-cmp', {
    config = function()
        require('modules.lsp.cmp').setup()
    end,
})
-- LSP source for nvim-cmp
Plug('hrsh7th/cmp-nvim-lsp')
-- Filesystem path completion for nvim-cmp
Plug('hrsh7th/cmp-path')
-- Command mode completions for nvim-cmp
Plug('hrsh7th/cmp-cmdline')
-- Buffer word completions for nvim-cmp
Plug('hrsh7th/cmp-buffer')
-- Snippets source for nvim-cmp
Plug('saadparwaiz1/cmp_luasnip')
-- Snippets plugin
Plug('L3MON4D3/LuaSnip')
-- Function signature help
Plug('hrsh7th/cmp-nvim-lsp-signature-help')
-- Code Action menu
Plug('weilbith/nvim-code-action-menu', {
    config = function()
        vim.g.code_action_menu_window_border = 'single'
        vim.g.code_action_menu_show_diff = false
        vim.g.code_action_menu_show_details = false
    end,
})
---------------------------=== TreeSitter ===---------------------------
-- TreeSitter syntax highlighting
Plug('nvim-treesitter/nvim-treesitter', {
    config = function()
        require('modules.treesitter.treesitter').setup()
    end,
})
---------------------------=== Tests ===---------------------------
-- Utility for running tests
Plug('klen/nvim-test', {
    config = function()
        require('modules.tests.nvim_test').setup()

    end,
})
---------------------------=== Utilities ===---------------------------
Plug('nvim-lualine/lualine.nvim', {
    config = function()
        require('modules.utilities.lualine').setup()
    end,
})
-- Smart Autotab
Plug('NMAC427/guess-indent.nvim', {
    config = function()
        require('guess-indent').setup()
    end,
})
-- Startup screen
Plug('goolord/alpha-nvim', {
    config = function()
        require('modules.utilities.alpha').setup()
    end,
})
-- Line indent markers
Plug('lukas-reineke/indent-blankline.nvim', {
    config = function()
        require('indent_blankline').setup()
    end,
})
-- Telescoping file finder
Plug('nvim-telescope/telescope.nvim', {
    config = function()
        require('modules.utilities.telescope_config').setup()
    end,
})
-- Zoxide telescope plugin
Plug('jvgrootveld/telescope-zoxide')
-- Telescope file browsing
Plug('nvim-telescope/telescope-file-browser.nvim')
-- File marker and navigator
Plug('ThePrimeagen/harpoon')
-- Utility for commenting lines
Plug('terrortylor/nvim-comment', {
    config = function()
        require('modules.utilities.nvim_comment').setup()
    end,
})
-- File Tree Devicons
Plug('nvim-tree/nvim-web-devicons')
-- File Tree
Plug('nvim-tree/nvim-tree.lua', {
    config = function()
        require('modules.utilities.nvim_tree').setup()
    end,
})
-- Swap to beginning and end of block with %
Plug('tmhedberg/matchit')
-- Async Lua support
Plug('nvim-lua/plenary.nvim')
-- Code running
Plug('CRAG666/code_runner.nvim', {
    config = function()
        require('modules.utilities.coderunner').setup()
    end,
})
-- Auto close ({[
Plug('jiangmiao/auto-pairs')
-- Project management
Plug('ahmedkhalf/project.nvim', {
    config = function()
        require('modules.utilities.project').setup()
    end,
})
Plug('shortcuts/no-neck-pain.nvim', {
    config = function()
        require('no-neck-pain').setup({
            width = 150,
        })
    end
})
---------------------------=== Git ===---------------------------
-- Git integration
Plug('tpope/vim-fugitive')
-- Git changes in file
Plug('lewis6991/gitsigns.nvim', {
    config = function()
        require('modules.git.git_signs').setup()
    end,
})
---------------------------=== Language Specific ===---------------------------
-- Rust crate support in cargo.toml
Plug('saecki/crates.nvim', {
    config = function()
        require('crates').setup()
    end,
})
---------------------------=== Themes ===---------------------------
-- Theme extension plugin - realtime feedback features
Plug('rktjmp/lush.nvim')
-- Plug('mcchrish/zenbones.nvim', {
-- Plug('navarasu/onedark.nvim', {
--     config = function()
--         require('modules.themes.onedark').setup()
--     end,
-- })
Plug('luisiacc/gruvbox-baby', {
    config = function()
        require('modules.themes.gruvbox').setup()
    end,
})
---------------------------=== Games ===---------------------------
-- Tetris, because why not
Plug('alec-gibson/nvim-tetris')
Plug.ends()
