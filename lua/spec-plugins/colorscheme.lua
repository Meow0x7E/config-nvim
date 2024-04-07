return {
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        config = function() vim.cmd("colorscheme vscode") end
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            icons_enabled = true,
            theme = "vscode"
        }
    }
}
