local optional = require("meow0x7e.optional")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function configureKeymaps(table, defOpt)
	local iS = optional.isString
	local iT = optional.isTable
	local iTE = optional.isTableElse

	iT(table)
	iT(defOpt)

	local function processKeymapTable(mode, table, defOpt)
		for _, v in ipairs(table) do
			iT(v)
			vim.api.nvim_set_keymap(mode, iS(v[1]), iS(v[2]), iTE(v[3], defOpt))
		end
	end

	for k, v in pairs(table) do
		processKeymapTable(iS(k), iT(v), defOpt)
	end
end

configureKeymaps({
	["n"] = {
		{ "<leader>-", ":split<cr>" },
		{ "<leader>\\", ":vertical split<cr>" },
		{ "<leader>sc", "<C-w>c" },
		{ "<leader>so", "<C-w>o" },
		{ "<C-h>", "<C-w>h" },
		{ "<C-j>", "<C-w>j" },
		{ "<C-k>", "<C-w>k" },
		{ "<C-l>", "<C-w>l" },
		{ "<C-Left>", ":vertical resize -2<cr>" },
		{ "<C-Down>", ":resize +2<cr>" },
		{ "<C-Up>", ":resize -2<cr>" },
		{ "<C-Right>", ":vertical resize +2<cr>" },
		{ "J", "8j" },
		{ "K", "8k" },
	},
	["v"] = {
		{ "<", "<gv" },
		{ ">", ">gv" },
	},
}, {
	noremap = false,
	silent = false,
})
