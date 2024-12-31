return {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },

    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        lspconfig.clangd.setup({
            capabilities = capabilities
        })
        lspconfig.gopls.setup({
            capabilities = capabilities
        })
    end
}

