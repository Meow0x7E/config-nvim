--v1.2

--- Checks if the given value is of a specific type.
--- @param v any The value to be checked.
--- @param t string The expected type.
--- @return any The value if it matches the expected type.
--- @error Throws an error if the value is not of the expected type.
local function typeIsIt(v, t)
    if type(v) ~= t then
        error("Invalid argument: Type is not a " .. t, 2)
    end
    return v
end

--- Checks if the given value is of a specific type and returns a fallback value if not.  
--- @param v any The value to be checked.  
--- @param t string The expected type.  
--- @param e any The fallback value to return if the value is not of the expected type.  
--- @return any The value if it matches the expected type; otherwise, the fallback value.
local function typeIsItElse(v, t, e)
    if type(v) == t then
        return v
    end
    return e
end

local this = {}

function this.isNil(v)
    return typeIsIt(v, "nil")
end

function this.isBoolean(v)
    return typeIsIt(v, "boolean")
end

function this.isNumber(v)
    return typeIsIt(v, "number")
end

function this.isString(v)
    return typeIsIt(v, "string")
end

function this.isFunction(v)
    return typeIsIt(v, "function")
end

function this.isUserdata(v)
    return typeIsIt(v, "userdata")
end

function this.isThread(v)
    return typeIsIt(v, "thread")
end

function this.isTable(v)
    return typeIsIt(v, "table")
end

function this.isNilElse(v, e)
    return typeIsItElse(v, "nil", e)
end

function this.isBooleanElse(v, e)
    return typeIsItElse(v, "boolean", e)
end

function this.isNumberElse(v, e)
    return typeIsItElse(v, "number", e)
end

function this.isStringElse(v, e)
    return typeIsItElse(v, "string", e)
end

function this.isFunctionElse(v, e)
    return typeIsItElse(v, "function", e)
end

function this.isUserdataElse(v, e)
    return typeIsItElse(v, "userdata", e)
end

function this.isThreadElse(v, e)
    return typeIsItElse(v, "thread", e)
end

function this.isTableElse(v, e)
    return typeIsItElse(v, "table", e)
end

return this
