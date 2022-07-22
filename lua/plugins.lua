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
---------------------------=== Tests ===---------------------------
-- Utility for running tests
Plug("vim-test/vim-test", {
	config = function()
		require("modules.tests.vim_test")
	end,
})
---------------------------=== Utilities ===---------------------------
-- Fuzzy file finder
Plug("kien/ctrlp.vim")
-- Telescoping file finder
Plug("nvim-telescope/telescope.nvim", {
	config = function()
		require("modules.utilities.telescope")
	end,
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
Plug("scrooloose/nerdtree", {
	config = function()
		require("modules.utilities.nerdtree")
	end,
})
-- Tree icons for NERDTree
Plug("ryanoasis/vim-devicons")
-- Git support for NERDTree
Plug("Xuyuanp/nerdtree-git-plugin")
-- Swap to beginning and end fo block with %
Plug("tmhedberg/matchit")
-- Status bar
Plug("vim-airline/vim-airline")
-- Status bar themes
Plug("vim-airline/vim-airline-themes")
-- Better syntax highlighting for many filetypes
Plug("sheerun/vim-polyglot", {
	config = function()
		vim.g.python_highlight_space_errors = 0
	end,
})
-- Git integration
Plug("tpope/vim-fugitive")
-- Auto-close parenthesis and scopes
Plug("jiangmiao/auto-pairs")
-- Async Lua support
Plug("nvim-lua/plenary.nvim")
---------------------------=== Language Specific ===---------------------------
-- Rust crate support in cargo.toml
Plug("saecki/crates.nvim", {
	config = function()
		require("crates").setup()
	end,
})
---------------------------=== Themes ===---------------------------
-- One dark theme and configuration
Plug("mofiqul/vscode.nvim", {
	config = function()
		vim.opt.termguicolors = true
		vim.opt.background = "dark"
		vim.cmd("colorscheme vscode")
	end,
})
Plug.ends()
