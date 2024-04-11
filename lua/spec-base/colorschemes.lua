local type = require("meow0x7e.type")
local optional = require("meow0x7e.optional")

local function init()
    local enabled = { name = "", bool = false }
    return function(name, bool)
        if bool and enabled.bool then
            error(enabled.name .. ":" .. name, 2)
        elseif bool then
            enabled.name = name
            enabled.bool = bool
        end
        return bool
    end
end

local function colorscheme(args, index)
    local cmd = "colorscheme "
    if type.isTable(args) then
        cmd = cmd .. args[optional.isNumber(index)]
    elseif type.isString(args) then
        cmd = cmd .. args
    else
        return nil
    end

    return function()
        vim.cmd(cmd)
    end
end

local function formatScheme(f, args)
    local R = {}
    for _, v in ipairs(args) do
        R[#R + 1] = f .. v
    end
    return R
end

local lambda = init()

return{
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        enabled = lambda("Mofiqul/vscode.nvim", true),
        dependencies = { "nvim-lualine/lualine.nvim" },
        config = colorscheme("vscode")
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        enabled = lambda("folke/tokyonight.nvim", false),
        config = colorscheme(
            formatScheme("tokyonight-", {
                --[[1]]"night",
                --[[2]]"moon",
                --[[3]]"storm",
                --[[4]]"day"
            }), 1)
    }
}
