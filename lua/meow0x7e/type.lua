--v1.0

--- @param v any
--- @param t string
--- @return boolean
local function typeIsIt(v, t)
    return type(v) == t
end

--- @param v any
--- @param t string
--- @return boolean
local function typeNotIt(v, t)
    return type(v) ~= t
end

local this = {}

function this.isNil(value)
    return typeIsIt(value, "nil")
end

function this.notNil(value)
    return typeNotIt(value, "nil")
end

function this.isBoolean(value)
    return typeIsIt(value, "boolean")
end

function this.notBoolean(value)
    return typeNotIt(value, "boolean")
end

function this.isNumber(value)
    return typeIsIt(value, "number")
end

function this.notNumber(value)
    return typeNotIt(value, "number")
end

function this.isString(value)
    return typeIsIt(value, "string")
end

function this.notString(value)
    return typeNotIt(value, "string")
end

function this.isFunction(value)
    return typeIsIt(value, "function")
end

function this.notFunction(value)
    return typeNotIt(value, "function")
end

function this.isUserdata(value)
    return typeIsIt(value, "userdata")
end

function this.notUserdata(value)
    return typeNotIt(value, "userdata")
end

function this.isThread(value)
    return typeIsIt(value, "thread")
end

function this.notThread(value)
    return typeNotIt(value, "thread")
end

function this.isTable(value)
    return typeIsIt(value, "table")
end

function this.notTable(value)
    return typeNotIt(value, "table")
end

return this
