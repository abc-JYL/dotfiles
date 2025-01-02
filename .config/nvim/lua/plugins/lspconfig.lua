return {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("plugins.configs.lspconfig")
    end
}

