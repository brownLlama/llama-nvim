return {
	"VonHeikemen/fine-cmdline.nvim",
	config = function()
		local fineline = require("fine-cmdline")
		local fn = fineline.fn
		require("fine-cmdline").setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = ": ",
			},
			popup = {
				position = {
					row = "30%",
					col = "50%",
				},
				size = {
					width = "30%",
				},
				border = {
					style = "rounded",
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
			hooks = {
				before_mount = function(input)
					-- code
				end,
				after_mount = function(input)
					-- code
				end,
				set_keymaps = function(imap, feedkeys)
					-- Restore default keybindings...
					-- Except for `<Tab>`, that's what everyone uses to autocomplete
					imap("<Esc>", fn.close)
					imap("<C-c>", fn.close)

					imap("<Up>", fn.up_search_history)
					imap("<Down>", fn.down_search_history)
				end,
			},
		})
	end,
}
