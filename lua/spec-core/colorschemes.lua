local type = require("meow0x7e.type")
local optional = require("meow0x7e.optional")

-- 使配色互斥，同时只能有一个启用
local enabled = { name = "", bool = false }
function try(name, bool)
    if bool and enabled.bool then
        error(enabled.name .. ":" .. name, 2)
    elseif bool then
        enabled.name = name
        enabled.bool = bool
    end
    return bool
end

local function colorscheme(str, args, i)
    local cmd = "colorscheme " .. optional.isString(str)

    if type.isTable(args) and type.isNumber(i) then
        cmd:format(args[i])
    end

    return function()
        vim.cmd(cmd)
    end
end

local function makePlugin(t)
    local R = { lazy = false, priority = 1000 }
    for k, v in pairs(t) do
        R[k] = v
    end
    return R
end

return {
    makePlugin {
        "Mofiqul/vscode.nvim",
        enabled = try("Mofiqul/vscode.nvim", true),
        dependencies = { "nvim-lualine/lualine.nvim" },
        config = colorscheme("vscode")
    },
    makePlugin {
        "folke/tokyonight.nvim",
        enabled = try("folke/tokyonight.nvim", false),
        config = colorscheme("tokyonight-%s", {
                --[[1]]"night",
                --[[2]]"moon",
                --[[3]]"storm",
                --[[4]]"day"
            }, 1)
    }
}
