return {
	"folke/persistence.nvim",
  -- stylua: ignore
  keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "恢复会话" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "恢复上次会话" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "不保存当前会话" },
  },
}
