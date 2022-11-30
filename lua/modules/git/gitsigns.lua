require('gitsigns').setup {
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        -- Actions
        map({ 'n', 'v' }, '<C-k>Gs', ':Gitsigns stage_hunk<CR>')
        map({ 'n', 'v' }, '<C-k>Gr', ':Gitsigns reset_hunk<CR>')
        map('n', '<C-k>GS', gs.stage_buffer)
        map('n', '<C-k>Gu', gs.undo_stage_hunk)
        map('n', '<C-k>GR', gs.reset_buffer)
        map('n', '<C-k>Gp', gs.preview_hunk)
        map('n', '<C-k>Gb', function() gs.blame_line { full = true } end)
        map('n', '<C-k>Hb', gs.toggle_current_line_blame)
        map('n', '<C-k>Gd', gs.diffthis)
        map('n', '<C-k>GD', function() gs.diffthis('~') end)
        map('n', '<C-k>Hd', gs.toggle_deleted)

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end
}
