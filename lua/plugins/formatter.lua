return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				bash = { "beautysh" },
				graphql = { "prettierd" },
				json = { "prettier" },
				lua = { "stylua" },
				markdown = { "prettier" },
				python = { "ruff", "isort", "black" },
        sql = { "sqlfmt" },
				yaml = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})
	end,
}
