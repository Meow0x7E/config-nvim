return {
    "hrsh7th/cmp-nvim-lsp",
    lazy = false,
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('lspconfig').clangd.setup({ capabilities = capabilities })
    end
}
