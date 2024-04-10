return {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    dependencies = {
        "williamboman/mason.nvim"
    },
    opts = {
        ensure_installed = require("config.lsp"),
        automatic_installation = true
    }
}
