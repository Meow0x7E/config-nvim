return {
	{
		"rcarriga/nvim-notify",
		keys = {
			{
				"<leader>un",
				function()
					require("notify").dismiss({ silent = true, pending = true })
				end,
				desc = "忽略所有通知",
			},
		},
		opts = {
			stages = "fade_in_slide_out",
		},
	},

	{
		"akinsho/bufferline.nvim",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "开关缓冲区固定" },
			{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "关闭非固定缓冲区" },
			{ "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "关闭其他缓冲区" },
			{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "关闭右侧缓冲区(相对于当前缓冲区)" },
			{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "关闭左侧缓冲区(相对于当前缓冲区)" },
			{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "上一个缓冲区" },
			{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "下一个缓冲区" },
			{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "上一个缓冲区" },
			{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "下一个缓冲区" },
			{ "[B", "<cmd>BufferLineMovePrev<cr>", desc = "左移缓冲区" },
			{ "]B", "<cmd>BufferLineMoveNext<cr>", desc = "右移缓冲区" },
		},
	},

	{
		"folke/noice.nvim",
    -- stylua: ignore
    keys = {
      { "<leader>sn", "", desc = "+noice"},
      { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
      { "<leader>snl", function() require("noice").cmd("last") end, desc = "显示最后一条消息" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "消息历史记录" },
      { "<leader>sna", function() require("noice").cmd("all") end, desc = "全部消息" },
      { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "关闭所有可见消息" },
      { "<leader>snt", function() require("noice").cmd("pick") end, desc = "消息选择 (Telescope/FzfLua)" },
      { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "向前滚动", mode = {"i", "n", "s"} },
      { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "向后滚动", mode = {"i", "n", "s"}},
    },
	},

	{
		"nvimdev/dashboard-nvim",
		opts = (function()
			local logo = [[
⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷
⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇
⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽
⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕
⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕
⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕
⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄
⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕
⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿
⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟
⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠
⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙
⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣
    ]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"

			return {
				config = { header = vim.split(logo, "\n") },
			}
		end)(),
	},
}
