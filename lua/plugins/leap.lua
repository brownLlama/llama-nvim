-- Jump to any location using s/S keys.

return {
	"ggandor/leap.nvim",
	dependencies = {
		{ "tpope/vim-repeat" },
	},
	config = function()
		local leap = require("leap")
		leap.create_default_mappings()
	end,
}
