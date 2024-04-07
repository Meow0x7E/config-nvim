--v1.0

local type = require("meow0x7e.type")
local optional = require("meow0x7e.optional")
local this = {}

function this.tableIsSequential(table)
    optional.isTable(table)

    local isSequential = true
    local expectedIndex = 1

    for i, _ in ipairs(table) do
        if i ~= expectedIndex then
            isSequential = false
            break
        end
        expectedIndex = i + 1
    end

    -- 如果表被完全遍历了，还需要检查是否还有额外的非数字键或负数键
    for k, _ in pairs(table) do
        if not (type.isNumber(k) and (k >= 1) and (k == math.floor(k))) then
            isSequential = false
            break
        end
    end

    return isSequential
end

return this
