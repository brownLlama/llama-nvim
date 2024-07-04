return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		-- import lspconfig plugin
		local lspconfig = require("lspconfig")

		-- import mason_lspconfig plugin
		local mason_lspconfig = require("mason-lspconfig")

		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap -- for conciseness

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Buffer local mappings.
				local opts = { buffer = ev.buf, silent = true }
			end,
		})

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup_handlers({
			-- default handler for installed servers
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,

			["bashls"] = function()
				lspconfig["bashls"].setup({
					capabilities = capabilities,
				})
			end,

			["docker_compose_language_service"] = function()
				lspconfig["docker_compose_language_service"].setup({
					capabilities = capabilities,
				})
			end,

			["dockerls"] = function()
				lspconfig["dockerls"].setup({
					capabilities = capabilities,
				})
			end,

			["grammarly"] = function()
				lspconfig["grammarly"].setup({
					capabilities = capabilities,
				})
			end,

			["graphql"] = function()
				lspconfig["graphql"].setup({
					capabilities = capabilities,
				})
			end,

			["jsonls"] = function()
				lspconfig["jsonls"].setup({
					capabilities = capabilities,
				})
			end,

			["marksman"] = function()
				lspconfig["marksman"].setup({
					capabilities = capabilities,
				})
			end,

			["pyright"] = function()
				lspconfig["pyright"].setup({
					capabilities = capabilities,
				})
			end,

			["ruff"] = function()
				lspconfig["ruff"].setup({
					capabilities = capabilities,
				})
			end,

			["sqlls"] = function()
				lspconfig["sqlls"].setup({
					capabilities = capabilities,
				})
			end,

			["taplo"] = function()
				lspconfig["taplo"].setup({
					capabilities = capabilities,
				})
			end,

			["terraformls"] = function()
				lspconfig["terraformls"].setup({
					capabilities = capabilities,
				})
			end,

			["yamlls"] = function()
				lspconfig["yamlls"].setup({
					capabilities = capabilities,
				})
			end,

			["lua_ls"] = function()
				-- configure lua server (with special settings)
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							-- make the language server recognize "vim" global
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
		})
	end,
}
