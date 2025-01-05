---@type vim.lsp.Config
return {
    cmd = { "zls" },
    root_markers = { "build.zig", ".git" },
    filetypes = { "zig", "zlr" },
}

