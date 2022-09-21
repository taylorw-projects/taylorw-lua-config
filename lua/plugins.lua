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
-- Jump to function locations within a file
Plug("preservim/tagbar", {
    config = function()
        vim.keymap.set("n", "<leader>M", ":TagbarToggle<CR>")
        vim.keymap.set("n", "<leader>m", ":TagbarOpenAutoClose<CR>")
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
    end,
})
-- File tree navigation
Plug("kyazdani42/nvim-tree.lua", {
    config = function()
        require("modules.utilities.nvim_tree")
    end,
})
-- Swap to beginning and end of block with %
Plug("tmhedberg/matchit")
-- Status bar
Plug("vim-airline/vim-airline")
-- Status bar themes
Plug("vim-airline/vim-airline-themes")
-- Auto-close parenthesis and scopes
Plug("jiangmiao/auto-pairs", {
    config = function()
        vim.g.AutoPairsShortcutFastWrap = "<M-l>"
    end
})
-- Async Lua support
Plug("nvim-lua/plenary.nvim")
-- Zen mode
Plug("Pocco81/true-zen.nvim", {
    config = function()
        require("modules.utilities.truezen")
    end
})
Plug("CRAG666/code_runner.nvim", {
    config = function()
        require("modules.utilities.coderunner")
    end
})
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
    end,
})
-- Rust Analyzer enable extra features
Plug("simrat39/rust-tools.nvim")
---------------------------=== Themes ===---------------------------
-- Nord theme and configuration
-- Plug("shaunsingh/nord.nvim", {
-- config = function()
-- vim.opt.termguicolors = true
-- vim.opt.background = "dark"
-- vim.g.nord_italic = false
-- require("nord").set()
-- end
-- })
-- VSCode theme and configuration
-- Plug("Mofiqul/vscode.nvim", {
-- config = function()
-- vim.o.background = "dark"

-- local c = require("vscode.colors")
-- require('vscode').setup({
-- Enable transparent background
-- transparent = true,

-- Enable italic comment
-- italic_comments = true,

-- Disable nvim-tree background color
-- disable_nvimtree_bg = true,

-- Override colors (see ./lua/vscode/colors.lua)
-- color_overrides = {
-- vscLineNumber = '#FFFFFF',
-- },

-- Override highlight groups (see ./lua/vscode/theme.lua)
-- group_overrides = {
-- use colors from this colorscheme by requiring vscode.colors!
-- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
-- }
-- })
-- end
-- })
-- Gruvbox theme and configuration
Plug("luisiacc/gruvbox-baby", {
    config = function()
        vim.cmd [[colorscheme gruvbox-baby]]
        vim.opt.termguicolors = true
        vim.opt.background = "dark"
    end
})

Plug.ends()
