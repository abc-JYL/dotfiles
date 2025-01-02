local lspconfig = require("mason-lspconfig")
lspconfig.setup()

lspconfig.setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({})
    end
})

