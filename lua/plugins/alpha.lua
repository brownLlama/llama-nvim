return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                         ~)      ]],
			[[                                          (_---; ]],
			[[                                           /|~|\ ]],
			[[                                          / / /| ]],
			[[  ██████╗ ██████╗  ██████╗ ██╗    ██╗███╗   ██╗  ]],
			[[  ██╔══██╗██╔══██╗██╔═══██╗██║    ██║████╗  ██║  ]],
			[[  ██████╔╝██████╔╝██║   ██║██║ █╗ ██║██╔██╗ ██║  ]],
			[[  ██╔══██╗██╔══██╗██║   ██║██║███╗██║██║╚██╗██║  ]],
			[[  ██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝██║ ╚████║  ]],
			[[  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝  ]],
			[[                                                 ]],
			[[   ██╗     ██╗      █████╗ ███╗   ███╗ █████╗     ]],
			[[   ██║     ██║     ██╔══██╗████╗ ████║██╔══██╗    ]],
			[[   ██║     ██║     ███████║██╔████╔██║███████║    ]],
			[[   ██║     ██║     ██╔══██║██║╚██╔╝██║██╔══██║    ]],
			[[   ███████╗███████╗██║  ██║██║ ╚═╝ ██║██║  ██║    ]],
			[[   ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝    ]],
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("<Leader> e", "  Explore", "<cmd>Neotree toggle right<cr>"),
			dashboard.button("<Leader>ff", "󰱼  Fuzzy Find", "<cmd>Telescope find_files<cr>"),
			dashboard.button("<Leader>fg", "  Fuzzy Grep", "<cmd>Telescope live_grep<cr>"),
			dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
		}

		local function footer()
			return "Ever met a llama with a good sense of personal space? Me neither."
		end

		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
