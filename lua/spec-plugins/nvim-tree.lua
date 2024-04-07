return { 
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        sort = { sorter = "case_sensitive" },
        view = { width = 48 },
        renderer = { group_empty = true },
        filters = { dotfiles = true }
    },
    cmd = {
        "NvimTreeClipboard",
        "NvimTreeClose",
        "NvimTreeCollapse",
        "NvimTreeCollapseKeepBuffers",
        "NvimTreeFindFile",
        "NvimTreeFindFileToggle",
        "NvimTreeFocus",
        "NvimTreeHiTest",
        "NvimTreeOpen",
        "NvimTreeRefresh",
        "NvimTreeResize",
        "NvimTreeToggle"
    },
    keys = { { "<leader>e", ":NvimTreeToggle<cr>", desc = "NvimTreeToggle" } }
}
