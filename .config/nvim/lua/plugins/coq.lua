return {
    "ms-jpq/coq_nvim", -- REQUIRED: for native Neovim LSP integration
    branch = "coq",
    -- lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
    event = "InsertEnter",
    dependencies = {
        -- 9000+ Snippets
        { "ms-jpq/coq.artifacts", branch = "artifacts" },

        -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
        -- Need to **configure separately**
        { 'ms-jpq/coq.thirdparty', branch = "3p" },
        -- - shell repl
        -- - nvim lua api
        -- - scientific calculator
        -- - comment banner
        -- - etc
        { "neovim/nvim-lspconfig" }
    },
    init = function()
        require("plugins.configs.coq")
    end,
    config = function()
        -- Your LSP settings here
        require("plugins.configs.coq.config")
    end,
}

