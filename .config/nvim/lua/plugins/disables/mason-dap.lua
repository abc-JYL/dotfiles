return {
    "jay-babu/mason-nvim-dap.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap"
    },
    config = function()
        require("plugins.configs.mason-dap")
    end
}

