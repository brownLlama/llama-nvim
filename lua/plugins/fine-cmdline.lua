return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	config = function()
		local fineline = require("fine-cmdline")
		local fn = fineline.fn

		-- Set the NormalFloat highlight group with your desired background color
		vim.cmd([[
      highlight NormalFloat guibg=#303446
      highlight FloatBorder guibg=#303446
    ]])

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
					winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
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
					imap("<Esc>", fn.close)
					imap("<C-c>", fn.close)
					imap("<Up>", fn.up_search_history)
					imap("<Down>", fn.down_search_history)
				end,
			},
		})
	end,
}
