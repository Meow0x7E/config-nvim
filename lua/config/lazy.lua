local optional = require("meow0x7e.optional")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local function getLocalSpec(table)
    local R = {}
    for k, v in ipairs(optional.isTable(table)) do
        R[k] = { import = "spec-" .. optional.isString(v) }
    end
    return R
end

require("lazy").setup({
    spec = getLocalSpec({
        "base",
        "language-server-protocol",
        "code-completion"
    }),
    git = { url_format = "https://mirror.ghproxy.com/github.com/%s.git" },
    defaults = {
        lazy = false,
        version = "*"
    },
    install = { colorscheme = { "vscode" } },
    checker = { enabled = true }
})
