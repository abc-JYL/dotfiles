return {
    "goolord/alpha-nvim",
    event = 'VimEnter',
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("plugins.configs.alpha")
    end,
}
