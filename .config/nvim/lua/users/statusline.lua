local function lsp_diagnostics()
  local buf = vim.api.nvim_get_current_buf()
  local diagnostics = vim.diagnostic.get(buf)

  local errors = 0
  local warnings = 0
  local info = 0
  local hints = 0

  for _, diag in ipairs(diagnostics) do
    if diag.severity == vim.diagnostic.severity.ERROR then
      errors = errors + 1
    elseif diag.severity == vim.diagnostic.severity.WARN then
      warnings = warnings + 1
    elseif diag.severity == vim.diagnostic.severity.INFO then
      info = info + 1
    elseif diag.severity == vim.diagnostic.severity.HINT then
      hints = hints + 1
    end
  end

  local status = ""
  if errors > 0 then
    status = status .. " " .. errors .. " "
  end
  if warnings > 0 then
    status = status .. " " .. warnings .. " "
  end
  if info > 0 then
    status = status .. " " .. info .. " "
  end
  if hints > 0 then
    status = status .. " " .. hints .. " "
  end

  return status ~= "" and status or ""
end

local function current_mode()
  local mode_map = {
    ['n'] = 'NORMAL',
    ['i'] = 'INSERT',
    ['v'] = 'VISUAL',
    ['V'] = 'V-LINE',
    [''] = 'V-BLOCK',
    ['R'] = 'REPLACE',
    ['c'] = 'COMMAND',
    ['t'] = 'TERMINAL'
  }

    return mode_map[vim.fn.mode()]
end

local function lsp_status()
    local attached_clients = vim.lsp.get_clients({ bufnr = 0 })
    if #attached_clients == 0 then
        return ""
    end
    local names = vim.iter(attached_clients)
        :map(function(client)
            local name = client.name:gsub("language.server", "ls")
            return name
        end)
        :totable()
    return "[" .. table.concat(names, ", ") .. "]"
end

vim.cmd.highlight("StatusLineBG guibg=#42455a")
vim.cmd.highlight("ModeBG guibg=#23395d")

function _G.statusline()
    return table.concat({
        "%#modebg#",
        current_mode(),
        "%#statuslinebg#",
        lsp_diagnostics(),
        '%t ',
        '%r',
        '%m',
        '%=',
        lsp_status(),
        ' %{&filetype}',
        ' %2p%%',
        '%3l:%-2c '
    }, " ")
end

vim.o.statusline = "%{%v:lua._G.statusline()%}"

