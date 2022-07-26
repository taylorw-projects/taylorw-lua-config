local Plug = require("utils.plug")

Plug.begin()
---------------------------=== Language Server Config ===---------------------------
-- Baseline LSP config
Plug("neovim/nvim-lspconfig", {
    config = function()
        require("modules.lsp.config")
    end,
})
-- Autocompletion plugin
Plug("hrsh7th/nvim-cmp", {
    config = function()
        require("modules.lsp.cmp")
    end,
})
-- LSP source for nvim-cmp
Plug("hrsh7th/cmp-nvim-lsp")
-- Filesystem path completion for nvim-cmp
Plug("hrsh7th/cmp-path")
-- Command mode completions for nvim-cmp
Plug("hrsh7th/cmp-cmdline")
-- Buffer word completions for nvim-cmp
Plug("hrsh7th/cmp-buffer")
-- Snippets source for nvim-cmp
Plug("saadparwaiz1/cmp_luasnip")
-- Snippets plugin
Plug("L3MON4D3/LuaSnip")
-- Function signature help
Plug("hrsh7th/cmp-nvim-lsp-signature-help")
-- Code Action menu
Plug("weilbith/nvim-code-action-menu", {
    config = function()
        vim.g.code_action_menu_window_border = 'single'
        vim.g.code_action_menu_show_diff = false
        vim.g.code_action_menu_show_details = false
    end
})
---------------------------=== TreeSitter ===---------------------------
Plug("nvim-treesitter/nvim-treesitter", {
    config = function()
        require("modules.treesitter.treesitter")
    end
})
---------------------------=== Tests ===---------------------------
-- Utility for running tests
Plug("klen/nvim-test", {
    config = function()
        require("modules.tests.nvim_test")
    end,
})
---------------------------=== Utilities ===---------------------------
-- Smart Autotab
Plug("NMAC427/guess-indent.nvim", {
    config = function()
        require("guess-indent").setup()
    end,
})
-- Startup screen
Plug("goolord/alpha-nvim", {
    config = function()
        require("modules.utilities.alpha")
    end
})
-- Line indent markers
Plug("lukas-reineke/indent-blankline.nvim", {
    config = function()
        require("indent_blankline").setup()
    end
})
-- Telescoping file finder
Plug("nvim-telescope/telescope.nvim", {
    config = function()
        require("modules.utilities.telescope")
    end,
})
-- Zoxide telescope plugin
Plug("jvgrootveld/telescope-zoxide")
-- File marker and navigator
Plug("ThePrimeagen/harpoon", {
    config = function()
        require("modules.utilities.harpoon")
    end
})
-- Utility for commenting lines
Plug("scrooloose/nerdcommenter", {
    config = function()
        vim.g.NERDSpaceDelims = 1
        vim.g.NERDCompactSexyComs = 1
        vim.g.NERDTrimTrailingWhitespace = 1
        vim.keymap.set("n", "<leader>c", ":call nerdcommenter#Comment(0, 'toggle')<C-m>")
        vim.keymap.set("v", "<leader>c", ":call nerdcommenter#Comment(0, 'toggle')<C-m>")
    end,
})
-- File Tree Devicons
Plug("nvim-tree/nvim-web-devicons")
-- File Tree
Plug("nvim-tree/nvim-tree.lua", {
    config = function()
        require("modules.utilities.nvim_tree")
    end
})
-- Swap to beginning and end of block with %
Plug("tmhedberg/matchit")
-- Async Lua support
Plug("nvim-lua/plenary.nvim")
-- Code running
Plug("CRAG666/code_runner.nvim", {
    config = function()
        require("modules.utilities.coderunner")
    end
})
-- Auto close ({[
Plug("jiangmiao/auto-pairs", {
    config = function()
        vim.g.AutoPairsShortcutFastWrap = "<M-l>"
        vim.keymap.set("n", "<M-f>", ":call AutoPairsJump()<cr>")
        vim.keymap.set("v", "<M-f>", ":call AutoPairsJump()<cr>")
    end
})
-- Smooth Scroll (for my smooth brain)
Plug("psliwka/vim-smoothie")
---------------------------=== Git ===---------------------------
-- Git integration
Plug("tpope/vim-fugitive")
-- Git changes in file
Plug("lewis6991/gitsigns.nvim", {
    config = function()
        require("modules.git.gitsigns")
    end
})
---------------------------=== Language Specific ===---------------------------
-- Rust crate support in cargo.toml
Plug("saecki/crates.nvim", {
    config = function()
        require("crates").setup()
    end
})
---------------------------=== Themes ===---------------------------
Plug("navarasu/onedark.nvim", {
    config = function()
        require("modules.themes.onedark")
    end
})
Plug.ends()
