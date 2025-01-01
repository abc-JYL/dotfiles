return {
    "rebelot/heirline.nvim",
    dependences = {"folke/tokyonight"},
    config = function()
        line = require("heirline")
        line.load_colors(require("tokyonight.colors").setup())
    end
}

