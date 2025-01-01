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
        vim.g.coq_settings = {
            -- auto_start = true, -- if you want to start COQ at startup
            -- Your COQ settings here
        }
    end,
    config = function()
        -- Your LSP settings here
        vim.cmd("COQnow -s")
    end,
}

