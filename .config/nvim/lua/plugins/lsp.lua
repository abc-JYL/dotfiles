local add = MiniDeps.add

add("neovim/nvim-lspconfig")
local lspconfig = require("lspconfig")
lspconfig.clangd.setup({})
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.lua_ls.setup({})

