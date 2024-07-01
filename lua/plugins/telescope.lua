-- Fuzzy Finder
return {
	{
		"nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
		dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable "make" == 1
        end,
      },
      {"nvim-telescope/telescope-ui-select.nvim"},
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },

		config = function()
			require("telescope").setup({
				defaults = {
					hidden = true,
					no_ignore = true,
					file_ignore_patterns = {
						"node_modules",
						".ruff_cache",
						".git/",
						".mypy_cache",
					},
				},
				pickers = {
					find_files = {
						hidden = true,
						no_ignore = true,
						file_ignore_patterns = {
							"node_modules",
							".ruff_cache",
							".git/",
							".mypy_cache",
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
