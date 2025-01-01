return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },

    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.clangd.setup({})
        lspconfig.gopls.setup({})
    end
}

