-- Completion (Also bind <C-Space> to <C-X><C-O>)
local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
end
imap_expr('<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])

-- Treesitter
-- keymaps = {
--     init_selection = "<Leader>ss",
--     node_incremental = "<Leader>si",
--     scope_incremental = "<Leader>sc",
--     node_decremental = "<Leader>sd"
-- }

