return {
    "goolord/alpha-nvim",
    event = 'VimEnter',
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local startify = require("alpha.themes.startify")
        -- available: devicons, mini, default is mini
        -- if provider not loaded and enabled is true, it will try to use another provider
        startify.file_icons.provider = "devicons"
        vim.api.nvim_set_hl(0, "GlowBlueHLGroup", {fg = "#126AED"})
        vim.api.nvim_set_hl(0, "GlowOrangeHLGroup", {fg = "#FF5733"})
        vim.api.nvim_set_hl(0, "NiceWheatHLGroup", {fg = "#A8CD76"})
        require("alpha").setup({
            layout = {
                {
                    type = "padding",
                    val = 3
                },
                {
                    type = "text",
                    val = {
                        [[           __..--''``---....___   _..._    __]],
                        [[ /// //_.-'    .-/";  `        ``<._  ``.''_ `. / // /]],
                        [[///_.-' _..--.'_    \                    `( ) ) // //]],
                        [[/ (_..-' // (< _     ;_..__               ; `' / ///]],
                        [[/ // // //  `-._,_)' // / ``--...____..-' /// / //]],
                        [[======================================================]]
                    },
                    opts = {
                        position = "center"
                    }
                },
                {
                    type = "padding",
                    val = 1
                },
                {
                    type = "text",
                    val = os.date("%A %d %B"),
                    opts = {
                        hl = "NiceWheatHLGroup",
                        position = "center"
                    }
                },
                {
                    type = "padding",
                    val = 1
                },
                {
                    type = "text",
                    val = {
                        [[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
                        [[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
                        [[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
                        [[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
                        [[██   ████ ███████  ██████    ████   ██ ██      ██]]
                    },
                    opts = {
                        hl = "GlowBlueHLGroup",
                        position = "center"
                    }
                },
                {
                    type = "padding",
                    val = 3
                },
                {
                    type = "button",
                    val = "    New file ",
                    on_press = function()
                        vim.cmd("ene")
                    end,
                    opts = {
                        shortcut = "    n",
                        align_shortcut = "right",
                        hl_shortcut = "GlowOrangeHLGroup",
                        keymap = { "n", "n", ":ene<cr>" },
                        position = "center"
                    }
                },
                {
                    type = "padding",
                    val = 1
                },
                {
                    type = "button",
                    val = "    Open file",
                    on_press = function()
                        vim.cmd("Telescope find_files")
                    end,
                    opts = {
                        shortcut = "    o",
                        align_shortcut = "right",
                        hl_shortcut = "GlowOrangeHLGroup",
                        keymap = { "n", "o", ":Telescope find_files<cr>" },
                        position = "center"
                    }
                },
                {
                    type = "padding",
                    val = 1
                },
                {
                    type = "button",
                    val = "  󰒲  Lazy     ",
                    on_press = function()
                        vim.cmd("Lazy")
                    end,
                    opts = {
                        shortcut = "    l",
                        align_shortcut = "right",
                        hl_shortcut = "GlowOrangeHLGroup",
                        keymap = { "n", "l", ":Lazy<cr>" },
                        position = "center"
                    }
                },
                {
                    type = "text",
                    val = {
                        [[]],
                        [[===================]],
                        [[]]
                    },
                    opts = {
                        position = "center"
                    }
                },
                {
                    type = "button",
                    val = "  󰅚  Quit NVIM",
                    on_press = function()
                        vim.cmd.q()
                    end,
                    opts = {
                        shortcut = "    q",
                        align_shortcut = "right",
                        hl_shortcut = "GlowOrangeHLGroup",
                        keymap = { "n", "q", ":q<cr>" },
                        position = "center"
                    }
                }
            },
        })
    end,
}
