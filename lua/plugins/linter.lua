return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			bash = { "shellcheck" },
			docker = { "hadolint" },
			json = { "jsonlint" },
			lua = { "selene" },
			markdown = { "markdownlint" },
			python = { "ruff", "pydocstyle", "mypy" },
			sql = { "sqlfluff" },
			terraform = { "tflint" },
			yaml = { "yamllint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
