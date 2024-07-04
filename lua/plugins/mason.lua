return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of LSP servers for mason to install
			ensure_installed = {
				"bashls", -- bash
				"docker_compose_language_service", -- docker-compose
				"dockerls", -- dockerfile
				"grammarly", -- markdown
				"graphql", -- graphql
				"jsonls", -- json
				"lua_ls", -- lua
				"marksman", -- markdown
				"ruff", -- python
				"sqlls", -- sql
				"taplo", -- toml
				"terraformls", -- terraform
				"yamlls", -- yaml
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
      -- List of Linters and Formatters for mason to install
			ensure_installed = {
        -- Linters
				"shellcheck", -- bash
        "hadolint", -- Dockerfile
        "jsonlint", -- json
        "selene", -- lua
        "markdownlint", -- markdown
        "pydocstyle", -- python
        "sqlfluff", -- sql
        "tflint", -- terraform
        "yamllint", -- yaml

        -- Formatters
        "beautysh", -- bash
        "prettierd", --graphql
        "prettier", -- json, markdown, yaml
        "stylua", -- lua
        "black", -- python
        "isort", -- python
        "sqlfmt", -- sql
			},
		})
	end,
}
