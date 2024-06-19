local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		--"https://github.com/folke/lazy.nvim.git",
		"https://mirror.ghproxy.com/github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "plugins" },
	},
	git = { url_format = "https://mirror.ghproxy.com/github.com/%s.git" },
	defaults = {
		lazy = false,
		version = "*",
	},
	install = { colorscheme = { "vscode" } },
	checker = { enabled = true },
})
