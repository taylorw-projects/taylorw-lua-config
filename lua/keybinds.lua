local M = {}
local opts = { remap = true, silent = true }

M.setup = function()
    ---------------------------=== Window Pane Management (<space>w) ===---------------------------
    -- standard functionality
    vim.keymap.set('n', '<space>ww', function() vim.cmd.wincmd('w') end, opts) -- move left
    vim.keymap.set('n', '<space>wh', function() vim.cmd.wincmd('h') end, opts) -- move left
    vim.keymap.set('n', '<space>wj', function() vim.cmd.wincmd('j') end, opts) -- move down
    vim.keymap.set('n', '<space>wk', function() vim.cmd.wincmd('k') end, opts) -- move up
    vim.keymap.set('n', '<space>wl', function() vim.cmd.wincmd('l') end, opts) -- move right
    vim.keymap.set('n', '<space>wv', function() vim.cmd.wincmd('v') end, opts) -- split vertical
    vim.keymap.set('n', '<space>ws', function() vim.cmd.wincmd('s') end, opts) -- split horizontal
    vim.keymap.set('n', '<space>wr', function() vim.cmd.wincmd('r') end, opts) -- rotate windows clockwise
    vim.keymap.set('n', '<space>wR', function() vim.cmd.wincmd('R') end, opts) -- rotate windows counterclockwise
    vim.keymap.set('n', '<space>wc', function() vim.cmd.wincmd('c') end, opts) -- close current pane
    vim.keymap.set('n', '<space>wo', function() vim.cmd.wincmd('o') end, opts) -- delete other panes
    vim.keymap.set('n', '<space>w=', function() vim.cmd.wincmd('=') end, opts) -- set panes to equal width
    vim.keymap.set('n', '<C-h>', function() vim.cmd.wincmd('h') end, opts)
    vim.keymap.set('n', '<C-j>', function() vim.cmd.wincmd('j') end, opts)
    vim.keymap.set('n', '<C-k>', function() vim.cmd.wincmd('k') end, opts)
    vim.keymap.set('n', '<C-l>', function() vim.cmd.wincmd('l') end, opts)
    -- Terminal
    vim.keymap.set('t', '<C-h>', function() vim.cmd.wincmd('h') end, opts) -- terminal move left
    vim.keymap.set('t', '<C-j>', function() vim.cmd.wincmd('j') end, opts) -- terminal move down
    vim.keymap.set('t', '<C-k>', function() vim.cmd.wincmd('k') end, opts) -- terminal move up
    vim.keymap.set('t', '<C-l>', function() vim.cmd.wincmd('l') end, opts) -- terminal move right
    vim.keymap.set('t', '<C-c>', function() vim.cmd.wincmd('c') end, opts) -- terminal close current pane
    -- nonstandard functionality
    vim.keymap.set(
        'n',
        '<space>w1',
        function()
            vim.cmd.wincmd('h')
            vim.cmd('enew')
            vim.cmd.wincmd('l')
            vim.cmd.wincmd('l')
            vim.cmd('enew')
            vim.cmd.wincmd('h')
        end
    ) -- swap left and right panes to new buffers
    vim.keymap.set(
        'n',
        '<space>w3',
        function()
            vim.cmd.wincmd('v')
            vim.cmd.wincmd('v')
            vim.cmd('enew')
            vim.cmd.wincmd('l')
            vim.cmd.wincmd('l')
            vim.cmd('enew')
            vim.cmd.wincmd('h')
        end,
        opts
    ) -- open 3 panes
    vim.keymap.set(
        'n',
        '<space>w4',
        function()
            vim.cmd.wincmd('v')
            vim.cmd.wincmd('s')
            vim.cmd.wincmd('l')
            vim.cmd.wincmd('s')
            vim.cmd.wincmd('h')
        end,
        opts
    ) -- open 4 panes
    vim.keymap.set(
        'n',
        '<space>wt',
        function()
            vim.cmd.wincmd('s')
            vim.cmd.wincmd('j')
            vim.cmd('ter')
            vim.cmd.resize(20)
            vim.cmd.setlocal('nonumber')
            vim.cmd('startinsert')
        end,
        opts
    ) -- open terminal in horizontal split
    vim.keymap.set(
        'n',
        '<space>wT',
        function()
            vim.cmd.wincmd('v')
            vim.cmd.wincmd('l')
            vim.cmd('ter')
            vim.cmd.setlocal('nonumber')
            vim.cmd('startinsert')
        end,
        opts
    ) -- open terminal in vertical split
    vim.keymap.set(
        'n',
        '<space>wz',
        function()
            vim.cmd('NoNeckPain')
        end,
        opts
    ) -- NoNeckPain mode
    ---------------------------=== Going places (<space>g) ===---------------------------
    vim.keymap.set('n', '<space>gV', function() vim.cmd.e('~/.config/nvim/init.lua') end, opts) -- go to init.lua
    vim.keymap.set('n', '<space>gP', function() vim.cmd.e('~/.config/nvim/lua/plugins.lua') end, opts) -- go to plugins.lua
    vim.keymap.set('n', '<space>gL', function() vim.cmd.e('~/.config/nvim/lua') vim.cmd.cd('~/.config/nvim/lua') end,
        opts) -- go to lua folder
    vim.keymap.set('n', '<space>gN', function() vim.cmd.e('~/.config/nvim') vim.cmd.cd('~/.config/nvim') end, opts) -- go to neovim folder
    vim.keymap.set('n', '<space>gl', function() vim.cmd.b('#') end, opts) -- go to last buffer
    vim.keymap.set('n', '<space>/', function() vim.cmd('Ex') end, opts) -- Open up file browser

    ---------------------------=== Fuzzy Finding (<space>f) ===---------------------------

    local telescope = require('telescope')
    local builtins = require('telescope.builtin')
    local themes = require('telescope.themes')

    -- Telescope
    vim.keymap.set(
        'n',
        '<space>.',
        function()
            builtins.find_files()
        end,
        opts
    ) -- find files
    vim.keymap.set(
        'n',
        '<space>ff',
        function()
            builtins.find_files({ find_command = { 'rg', '--files', '--hidden', '-g', '!.git' } })
        end,
        opts
    ) -- find files
    vim.keymap.set(
        'n',
        '<space>fg',
        function()
            builtins.live_grep()
        end,
        opts
    ) -- find grep
    vim.keymap.set(
        'n',
        '<space>fb',
        function()
            builtins.buffers()
        end,
        opts
    ) -- find buffers
    vim.keymap.set(
        'n',
        '<space>fH',
        function()
            builtins.help_tags()
        end,
        opts
    ) -- find help tags
    vim.keymap.set(
        'n',
        '<space>fz',
        function()
            telescope
                .extensions
                .zoxide
                .list(themes.get_dropdown())
        end,
        opts
    ) -- find zoxide
    vim.keymap.set(
        'n',
        '<space>fG',
        function()
            builtins.git_status()
        end,
        opts
    ) -- find git status
    vim.keymap.set(
        'n',
        '<space>fd',
        function()
            builtins.diagnostics()
        end,
        opts
    ) -- find error diagnostics
    vim.keymap.set(
        'n',
        '<space>fh',
        function()
            vim.cmd('Telescope harpoon marks theme=dropdown')
        end,
        opts
    ) -- find harpoon marks
    vim.keymap.set(
        'n',
        '<space>fp',
        function()
            telescope
                .extensions
                .projects
                .projects(themes.get_dropdown())
        end,
        opts
    ) -- find projects
    vim.keymap.set(
        'n',
        '<space>;',
        function()
            telescope
                .extensions
                .projects
                .projects(themes.get_dropdown())
        end,
        opts
    ) -- find projects alternative keybind
    vim.keymap.set(
        'n',
        '<space>fF',
        function()
            telescope
                .extensions
                .file_browser
                .file_browser(themes.get_dropdown())
        end
    )
    vim.keymap.set(
        'n',
        '<space>,',
        function()
            telescope
                .extensions
                .file_browser
                .file_browser(themes.get_dropdown())
        end,
        opts
    ) -- file browesr alternative keybind
    ---------------------------=== Code LSP (c) ===---------------------------
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- go to previous diagnostic
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- go to next diagnostic
    vim.keymap.set('n', '<space>ce', vim.diagnostic.open_float, opts) -- show diagnostic float

    ---------------------------=== Clipboard Actions (<C-space>) ===---------------------------
    vim.keymap.set('v', '<C-space>y', '"*y') -- copy to clipboard
    vim.keymap.set('v', '<C-space>d', '"*d') -- delete to clipboard
    vim.keymap.set('n', '<C-space>p', '"+p') -- paste from clipboard

    ---------------------------=== AutoPairs (Meta key) ===---------------------------
    vim.keymap.set({ 'n', 'v' }, '<M-f>', ':call AutoPairsJump()<cr>')
    vim.g.AutoPairsShortcutFastWrap = '<M-l>'

    ---------------------------=== Editing (e) ===---------------------------
    vim.keymap.set('n', '<space>ew', function() vim.cmd('w') end, opts) -- save
    vim.keymap.set('n', '<space>eW', function() vim.cmd('wa') end, opts)
    vim.keymap.set('n', '<space>eq', function() vim.cmd('q') end, opts)
    vim.keymap.set('n', '<space>eQ', function() vim.cmd('qa') end, opts)
    vim.keymap.set('n', '<space>ewqa', function() vim.cmd('wqa') end, opts)
    vim.keymap.set('n', '<space>eb', function() vim.cmd('bd') end, opts)

    ---------------------------=== Harpoon (h) ===---------------------------
    vim.keymap.set('n', '<space>ha', function() require('harpoon.mark').add_file() end, opts)
    vim.keymap.set('n', '<space>hh', function() require('harpoon.ui').toggle_quick_menu() end, opts)
    vim.keymap.set('n', '<space>hn', function() require('harpoon.ui').nav_next() end, opts)
    vim.keymap.set('n', '<space>hp', function() require('harpoon.ui').nav_prev() end, opts)
    vim.keymap.set('n', '<space>h1', function() require('harpoon.ui').nav_file(1) end, opts)
    vim.keymap.set('n', '<space>h2', function() require('harpoon.ui').nav_file(2) end, opts)
    vim.keymap.set('n', '<space>h3', function() require('harpoon.ui').nav_file(3) end, opts)
    vim.keymap.set('n', '<space>h4', function() require('harpoon.ui').nav_file(4) end, opts)
    vim.keymap.set('n', '<space>h5', function() require('harpoon.ui').nav_file(5) end, opts)
    vim.keymap.set('n', '<space>h6', function() require('harpoon.ui').nav_file(6) end, opts)
    vim.keymap.set('n', '<space>h7', function() require('harpoon.ui').nav_file(7) end, opts)
    vim.keymap.set('n', '<space>h8', function() require('harpoon.ui').nav_file(8) end, opts)
    vim.keymap.set('n', '<space>h9', function() require('harpoon.ui').nav_file(9) end, opts)
    vim.keymap.set('n', '<space>h0', function() require('harpoon.ui').nav_file(0) end, opts)

    ---------------------------=== Test (t) ===---------------------------
    vim.keymap.set('n', '<space>ts', function() vim.cmd('TestSuite') end, opts)
    vim.keymap.set('n', '<space>tf', function() vim.cmd('TestFile') end, opts)
    vim.keymap.set('n', '<space>te', function() vim.cmd('TestEdit') end, opts)
    vim.keymap.set('n', '<space>tt', function() vim.cmd('TestNearest') end, opts)
    vim.keymap.set('n', '<space>tl', function() vim.cmd('TestLast') end, opts)
    vim.keymap.set('n', '<space>tv', function() vim.cmd('TestVisit') end, opts)
    vim.keymap.set('n', '<space>ti', function() vim.cmd('TestInfo') end, opts)

    ---------------------------=== Run Code (r) ===---------------------------
    vim.keymap.set('n', '<space>rr', function() vim.cmd('RunCode') end, { noremap = true, silent = false })
    vim.keymap.set('n', '<space>rf', function() vim.cmd('RunFile') end, { noremap = true, silent = false })
    vim.keymap.set('n', '<space>rft', function() vim.cmd('RunFile tab') end, { noremap = true, silent = false })
    vim.keymap.set('n', '<space>rp', function() vim.cmd('RunProject') end, { noremap = true, silent = false })
    vim.keymap.set('n', '<space>rc', function() vim.cmd('RunClose') end, { noremap = true, silent = false })

    ---------------------------=== Opening Things (o) ===---------------------------
    vim.keymap.set('n', '<space>ot', function() vim.cmd('NvimTreeToggle') end, opts)
    vim.keymap.set('n', '<space>ont', function() vim.cmd('NvimTreeToggle') end, opts)
    vim.keymap.set('n', '<space>onn', function() vim.cmd('NvimTreeFocus') end, opts)
    vim.keymap.set('n', '<space>onf', function() vim.cmd('NvimTreeFindFile') end, opts)
    vim.keymap.set('n', '<space>onc', function() vim.cmd('NvimTreeCollapse') end, opts)
    vim.keymap.set('n', '<space>\'', function() vim.cmd('NvimTreeToggle') end, opts)

    ---------------------------=== Project (p) ===---------------------------
    vim.keymap.set(
        'n',
        '<space>p',
        function()
            telescope
                .extensions
                .projects
                .projects(themes.get_dropdown())
        end
    )
end

---------------------------=== Code LSP on_attach (c) ===---------------------------
M.lsp_on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<space>cD', vim.lsp.buf.declaration, bufopts) -- go to declaration
    vim.keymap.set('n', '<space>cd', require('telescope.builtin').lsp_definitions, bufopts) -- go to definition
    vim.keymap.set('n', '<space>ct', require('telescope.builtin').lsp_type_definitions, bufopts) -- go to type definitions
    vim.keymap.set('n', '<space>cs', require('telescope.builtin').lsp_document_symbols, bufopts) -- search lsp document symbol
    vim.keymap.set('n', '<space>cS', require('telescope.builtin').lsp_workspace_symbols, bufopts) -- search lsp workspace symbols
    vim.keymap.set('n', '<space>fs', require('telescope.builtin').lsp_document_symbols, bufopts) -- search lsp document symbol (alternate keybind)
    vim.keymap.set('n', '<space>fS', require('telescope.builtin').lsp_workspace_symbols, bufopts) -- search lsp workspace symbols (alternate keybind)
    vim.keymap.set('n', '<space>ch', vim.lsp.buf.hover, bufopts) -- show help dialog
    vim.keymap.set('n', '<space>cH', vim.lsp.buf.signature_help, bufopts) -- show signature help
    vim.keymap.set('n', '<space>ci', require('telescope.builtin').lsp_implementations, bufopts) -- search implementations
    vim.keymap.set(
        'n',
        '<space>cv',
        function()
            vim.cmd.wincmd('v')
            vim.cmd.wincmd('l')
            vim.lsp.buf.definition()
        end,
        bufopts
    ) -- open definition in split
    vim.keymap.set(
        'n',
        '<space>cV',
        function()
            vim.cmd.wincmd('v')
            vim.cmd.wincmd('l')
            vim.lsp.buf.declaration()
        end,
        bufopts
    ) -- open declaration in split
    vim.keymap.set('n', '<space>cr', require('telescope.builtin').lsp_references, bufopts) -- search references
    vim.keymap.set('n', '<space>cwa', vim.lsp.buf.add_workspace_folder, bufopts) -- add folder to workspace
    vim.keymap.set('n', '<space>cwr', vim.lsp.buf.remove_workspace_folder, bufopts) -- remove folder from workspace
    vim.keymap.set(
        'n',
        '<space>cwl',
        function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end,
        bufopts
    ) -- list workspace folders
    vim.keymap.set('n', '<space>ctd', vim.lsp.buf.type_definition, bufopts) -- show type definition
    vim.keymap.set('n', '<space>cn', vim.lsp.buf.rename, bufopts) -- rename symbol and references
    vim.keymap.set('n', '<space>ca', function() vim.cmd('CodeActionMenu') end, bufopts) -- open CodeActionMenu
    vim.keymap.set('n', '<space>cf', function() vim.lsp.buf.format { async = true } end, bufopts) -- format code
end

---------------------------=== Git (G) ===---------------------------
M.gitsigns_on_attach = function(bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    local gs = require('gitsigns')
    -- general keybinds
    vim.keymap.set({ 'n', 'v' }, '<space>Gs', gs.stage_hunk, bufopts)
    vim.keymap.set({ 'n', 'v' }, '<space>Gr', gs.reset_hunk, bufopts)
    vim.keymap.set('n', '<space>GS', gs.stage_buffer, bufopts)
    vim.keymap.set('n', '<space>Gu', gs.undo_stage_hunk, bufopts)
    vim.keymap.set('n', '<space>GR', gs.reset_buffer, bufopts)
    vim.keymap.set('n', '<space>Gp', gs.preview_hunk, bufopts)
    vim.keymap.set('n', '<space>Gb', function() gs.blame_line { full = true } end, bufopts)
    vim.keymap.set('n', '<space>Gd', gs.diffthis, bufopts)
    vim.keymap.set('n', '<space>GD', function() gs.diffthis('~') end, bufopts)
    vim.keymap.set('n', '<space>Gd', gs.toggle_deleted, bufopts)
    -- navigation
    vim.keymap.set('n', ']c', function()
    end, { expr = true })
    vim.keymap.set('n', ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
    end, { expr = true })
    vim.keymap.set('n', '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
    end, { expr = true })
    vim.keymap.set({ 'o', 'x' }, '<space>Gh', gs.select_hunk, bufopts)
end

return M
