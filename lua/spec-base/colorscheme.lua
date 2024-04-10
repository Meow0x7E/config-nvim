return {
    "Mofiqul/vscode.nvim",
    lazy = false,
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function() vim.cmd("colorscheme vscode") end
}
