vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.yaml", "*.yml" },
	callback = function()
		vim.opt_local.softtabstop = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "hosts",
	callback = function()
		vim.opt_local.softtabstop = 45
		vim.opt_local.tabstop = 45
		vim.opt_local.shiftwidth = 45
		vim.opt_local.expandtab = false
	end,
})
