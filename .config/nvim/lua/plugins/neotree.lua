return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {},
    init = function()
        require("plugins.configs.neotree")
    end,
}
