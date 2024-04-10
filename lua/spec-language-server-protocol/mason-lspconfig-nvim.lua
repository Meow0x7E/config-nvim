return {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    dependencies = {
        "williamboman/mason.nvim"
    },
    opts = {
        ensure_installed = {
            "bashls",
            "clangd",
            "cmake",
            "cssls",
            "html",
            "jsonls",
            "jdtls",
            "tsserver",
            "kotlin_language_server",
            "lua_ls",
            "markdown_oxide",
            "basedpyright",
            "rust_analyzer",
            "taplo",
            "vuels",
            "lemminx",
            "hydra_lsp"
        },
        automatic_installation = true
    }
}
