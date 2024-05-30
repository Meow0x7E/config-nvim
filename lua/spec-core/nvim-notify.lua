return {
    "rcarriga/nvim-notify",
    lazy = false,
    opts = {
        background_colour = "#000000",
        fps = 8,
        icons = {
            DEBUG = "",
            ERROR = "",
            WARN = "",
            INFO = "",
            TRACE = "✎"
        },
        --[[
        -- 0 - All
        -- 1 - Debug, Error, Warn, Info
        -- 2 - Error, Warn, Info
        -- 3 - Error, Warn
        -- 4 - Error
        -- 5 - None
        --]]
        level = 5,
        minimum_width = 64,
        render = ({
            --[[1]]"default",
            --[[2]]"minimal",
            --[[3]]"simple",
            --[[4]]"compact",
            --[[5]]"wrapped-compact"
        })[1],
        stages = ({
            --[[1]]"fade_in_slide_out",
            --[[2]]"fade",
            --[[3]]"slide",
            --[[4]]"static"
        })[4],
        time_formats = {
            notification = "%T",
            notification_history = "%FT%T"
        },
        timeout = 5000,
        top_down = true
    },
    config = function(_, opts)
        require("notify").setup(opts)
        vim.notify = require("notify")
    end
}
