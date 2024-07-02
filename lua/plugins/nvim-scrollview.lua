-- Horizontal scroll bar on the left.
return {
	"dstein64/nvim-scrollview",
	config = function()
		require("scrollview").setup({
			signs_on_startup = {},
		})
	end,
}
