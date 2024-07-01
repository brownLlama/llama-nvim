return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>"] = {
				-- Toggle Explorer
				["e"] = { "<cmd>Neotree toggle right<cr>", "Toggle Explorer" },
				-- Open Link
				["l"] = { ":sil !open <cWORD><cr>", "Open Link" },
				-- Markdown Preview
				-- ["m"] = { "<cmd>MPOpen<cr>", "Markdown Preview" },
				-- Exit Nvim
				["q"] = { "<cmd>q<cr>", "Exit" },
				-- Vertical Split
				["v"] = {
					"<cmd>vsplit<CR><cmd>TmuxNavigateLeft<CR><cmd>BufferLineCyclePrev<CR>",
					"Vertical Split",
				},
				-- Write
				["w"] = { "<cmd>w<cr>", "Write" },
				-- Close & Exit Buffer
				["x"] = { "<cmd>bw<cr>", "Close Buffer" },
				-- Close Vertical Split without close the file
				["z"] = { "<cmd>:on<cr>", "Close Vertical Split" },

				-- Telescope
				f = {
					name = "Telescope", -- Group name for Telescope related commands
					f = { "<cmd>Telescope find_files<cr>", "Find Files" },
					g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
					b = { "<cmd>Telescope buffers<cr>", "Buffers" },
					w = { "<cmd>Telescope grep_string<cr>", "Current Word" },
					d = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Diagnostics" },
				},

				-- Git
				g = {
					name = "Git",
					g = { "<cmd>Flog<cr>", "Git Graph" },
					l = { "<cmd>LazyGit<cr>", "LazyGit" },
					b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Blame Current Line" },
				},

				-- Toggle Options
				t = {
					name = "Toggle Options",
					t = { "<cmd>ToggleTerm<cr>", "Terminal" },
					c = { "<cmd>CopilotChatVsplitToggle<cr>", "Copilot Chat" },
					u = { "<cmd>UndotreeToggle<cr>", "Undo Tree" },
				},

				-- CopilotChat
				c = {
					name = "CopilotChat",
					e = { "<cmd>CopilotChatExplain<cr>", "Explain yanked code" },
					d = { "<cmd>CopilotChatFixDiagnostic<cr>", "Fix Diagnostic of current line" },
				},
			},
		})

		-- Copilot Chat Visual Mode Commands
		wk.register({
			-- CopilotChat
			c = {
				name = "Copilot Chat", -- Display name when pressing <leader>c
				v = { ":CopilotChatVisual ", "Visual Chat", mode = "x" },
				i = { ":CopilotChatInPlace<cr>", "In-place code", mode = "x" },
			},
		}, { mode = "x", prefix = "<leader>" })

		-- Copilot Chat Query
		wk.register({
			c = {
				name = "Copilot", -- Optional: gives a name to this group of commands
				c = {
					function()
						local input = vim.fn.input("Copilot Query: ")
						-- Ensure input is not empty before proceeding
						if input ~= "" then
							-- Execute the CopilotChat command with the user's input
							vim.cmd("CopilotChat " .. input)
						end
					end,
					"Copilot Chat",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
