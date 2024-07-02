-- Jump to any location using f/F keys.

return {
	"ggandor/leap.nvim",
	dependencies = {
		{ "tpope/vim-repeat" },
	},
	config = function()
		local leap = require("leap")
		leap.add_default_mappings(true)
		-- Unmap the default keybindings
		vim.api.nvim_del_keymap("n", "s")
		vim.api.nvim_del_keymap("n", "S")
		vim.api.nvim_del_keymap("x", "s")
		vim.api.nvim_del_keymap("x", "S")
		vim.api.nvim_del_keymap("o", "s")
		vim.api.nvim_del_keymap("o", "S")
		-- Map new keybindings
		vim.keymap.set({ "n", "x", "o" }, "f", function()
			leap.leap({ target_windows = { vim.fn.win_getid() } })
		end)
		vim.keymap.set({ "n", "x", "o" }, "F", function()
			leap.leap({ target_windows = { vim.fn.win_getid() }, backward = true })
		end)
	end,
}
