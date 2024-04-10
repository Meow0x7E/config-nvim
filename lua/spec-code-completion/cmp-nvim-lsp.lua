return {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
    config = function()
        local lspconfig = require("lspconfig")
        local type = require("meow0x7e.type")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        local function iter(c)
            local index = 0
            local count = #c

            return function()
                if index <= count then
                    index = index + 1
                end
                if type.isString(e) then
                    return e, { capabilities = capabilities }
                elseif type.isTable(e) then
                    e[2].capabilities = capabilities
                    return e[1], e[2]
                end
            end
        end

        for name, opt in iter(require("config.lsp")) do
            lspconfig[name].setup(parseElement(opt))
        end
    end
}
