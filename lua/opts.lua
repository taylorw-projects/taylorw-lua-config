-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Cursor line highlighting
vim.opt.cursorline = true

-- Tab sizes
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Allow scrolling
vim.opt.mouse = "a"

-- Disable line wrapping
vim.opt.wrap = false

-- folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
