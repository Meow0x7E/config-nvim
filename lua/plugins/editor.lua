return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
			end,
			desc = "资源管理器 NeoTree (根目录)",
		},
		{
			"<leader>fE",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
			end,
			desc = "资源管理器 NeoTree (cwd)",
		},
		{ "<leader>e", "<leader>fe", desc = "资源管理器 NeoTree (根目录)", remap = true },
		{ "<leader>E", "<leader>fE", desc = "资源管理器 NeoTree (cwd)", remap = true },
		{
			"<leader>ge",
			function()
				require("neo-tree.command").execute({ source = "git_status", toggle = true })
			end,
			desc = "Git 资源管理器",
		},
		{
			"<leader>be",
			function()
				require("neo-tree.command").execute({ source = "buffers", toggle = true })
			end,
			desc = "缓冲区资源管理器",
		},
	},
	{
		"folke/trouble.nvim",
		{
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "问题诊断" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "缓冲区问题诊断" },
			{ "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "标志问题诊断" },
		},
	},
}
