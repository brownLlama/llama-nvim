-- Shows keys, when leader keys is pressed
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
				-- Markdown Preview
				-- ["m"] = { "<cmd>MPOpen<cr>", "Markdown Preview" },
        -- Close Buffer
				["x"] = { "<cmd>bw<cr>", "Close Buffer" },
				-- Vertical Split
				["v"] = {
					"<cmd>vsplit<CR><cmd>TmuxNavigateLeft<CR><cmd>BufferLineCyclePrev<CR>",
					"Vertical Split",
				},

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
					l = { "<cmd>LazyGit<cr>", "LazyGit" },
          b = { "<cmd>BlameToggle<cr>", "Blame File" },
					c = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Blame Current Line" },
				},

				-- Toggle Options
				t = {
					name = "Toggle Options",
				},

				-- CopilotChat
				c = {
					name = "CopilotChat",
					e = { "<cmd>CopilotChatExplain<cr>", "Explain yanked code" },
					d = { "<cmd>CopilotChatFixDiagnostic<cr>", "Fix Diagnostic of current line" },
				},
			},
		})
	end,
}
