return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
        require("plugins.configs.treesitter")
    end
}

