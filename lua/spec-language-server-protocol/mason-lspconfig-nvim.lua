return {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
        "williamboman/mason.nvim"
    },
    opts = {
        ensure_installed = {
            "bashls",
            "clangd",
            "csharp_ls",
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
            "ruby_ls",
            "rust_analyzer",
            "taplo",
            "vuels",
            "lemminx",
            "hydra_lsp"
        },
        automatic_installation = true
    }
}
