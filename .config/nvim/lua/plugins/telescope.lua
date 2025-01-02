return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-media-files.nvim", "folke/noice.nvim" },
    lazy = true,
    cmd = "Telescope",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>fh", "<cmd>Telescope help_tags" }
    },
    opts = {},
    config = function()
        require("plugins.configs.telescope")
    end
}

