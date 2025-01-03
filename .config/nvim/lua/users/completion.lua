-- local debounce_delay = 100  -- Debounce delay in milliseconds
-- local last_triggered = 0  -- Last time completion was triggered
-- 
-- vim.api.nvim_create_autocmd("LspAttach", {
--     group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
--     callback = function(ev)
--         -- Enable LSP completion with auto trigger
--         vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, { autotrigger = true })
-- 
--         -- Set omnifunc as a fallback for completion
--         vim.api.nvim_buf_set_option(ev.buf, 'completeopt', 'menu,menuone,noselect')
-- 
--         -- Autocommand for InsertCharPre to handle LSP and fallback to omnifunc
--         vim.api.nvim_create_autocmd("InsertCharPre", {
--             buffer = ev.buf,
--             callback = function()
--                 local current_time = vim.loop.hrtime() / 1e6  -- Get the current time in milliseconds
-- 
--                 -- Trigger completion only if the debounce time has passed
--                 if current_time - last_triggered > debounce_delay then
--                     last_triggered = current_time  -- Update the last triggered time
-- 
--                     if vim.fn.pumvisible() == 0 and vim.bo.omnifunc ~= '' then
--                         -- Trigger omnifunc if LSP does not provide suggestions
--                         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-o>", true, true, true), "n")
--                     end
--                 end
--             end,
--         })
-- 
--         -- Enter key behavior for completion or newline
--         vim.keymap.set('i', '<cr>', function()
--             return vim.fn.pumvisible() == 1 and '<C-y>' or '<cr>'
--         end, { expr = true })
-- 
--         -- Tab key behavior for completion and snippet navigation
--         vim.keymap.set({ 'i', 's' }, '<Tab>', function()
--             if vim.fn.pumvisible() == 1 then
--                 vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
--             elseif vim.snippet.active({ direction = 1 }) then
--                 vim.snippet.jump(1)
--             else
--                 vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n")
--             end
--         end)
-- 
--         -- Shift-Tab behavior for snippet navigation
--         vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
--             if vim.fn.pumvisible() == 1 then
--                 vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
--             elseif vim.snippet.active({ direction = -1 }) then
--                 vim.snippet.jump(-1)
--             else
--                 vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true), "n")
--             end
--         end)
-- 
--         -- Snippet backspace behavior
--         vim.keymap.set('s', '<BS>', '<C-o>s')
--     end,
-- })

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
    callback = function(ev)
        vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, { autotrigger = true })
    end,
})

