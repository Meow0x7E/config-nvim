return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local ensure_installed = {
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
        }
        local lspconfig = require("lspconfig")
        local type = require("meow0x7e.type")

        local function iter(c)
            local index = 0
            local count = #c

            return function()
                if index <= count then
                    index = index + 1
                end
                if type.isString(e) then
                    return e, {}
                elseif type.isTable(e) then
                    return e[1], e[2]
                end
            end
        end

        for name, opt in iter(ensure_installed) do
            lspconfig[name].setup(parseElement(opt))
        end
    end
}
