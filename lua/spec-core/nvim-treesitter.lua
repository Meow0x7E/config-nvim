return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "bash",
                "c",
                "c_sharp",
                "cmake",
                "cpp",
                "java",
                "javascript",
                "kotlin",
                "lua",
                "python",
                "query",
                "rust",
                "typescript",

                "vim",

                "html",
                "css",

                "luadoc",
                "markdown",
                "vimdoc",

                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",

                "hjson",
                "ini",
                "json",
                "json5",
                "jsonc",
                "ssh_config",
                "toml",
                "xml",
                "yaml"
            },
            sync_install = true,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end,
    build = ":TSUpdate"
}
