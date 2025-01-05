local key_pairs = {
   ["("] = { pair = "()" },
   ["["] = { pair = "[]" },
   ["{"] = { pair = "{}" },
   ['"'] = { pair = '""' },
   ["'"] = { pair = "''" },
   ["`"] = { pair = "``" },
}

for _, info in pairs(key_pairs) do
   vim.api.nvim_set_keymap('i', info.pair:sub(1, 1), info.pair .. "<Left>", { noremap = true, silent = true })
end

local function insert_get_pair()
   local line = "_" .. vim.api.nvim_get_current_line()
   local col = vim.api.nvim_win_get_cursor(0)[2] + 1
   return line:sub(col, col + 1)
end

local function is_pair(pair)
   for _, info in pairs(key_pairs) do
      if pair == info.pair then
         return true
      end
   end
   return false
end

local function delete_pair(key)
   local pair = insert_get_pair()

   if (key == "<BS>" or key == "<C-H>") and is_pair(pair) then
      return "<BS><Del>" -- Delete both characters
   end

   return key
end

vim.keymap.set("i", "<BS>", function()
   return delete_pair("<BS>")
end, { noremap = true, expr = true })

