return {
    "hrsh7th/cmp-cmdline",
    lazy = false,
    config = function()
        -- `/` cmdline setup.
        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            }
        })
    end
}
