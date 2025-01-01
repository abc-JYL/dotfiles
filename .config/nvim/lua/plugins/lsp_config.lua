return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        local lspconfig = require("mason-lspconfig")
        lspconfig.setup()

        lspconfig.setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end
        })
    end
}

