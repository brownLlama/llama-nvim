-- Lazygit is integrated with git-delta.
-- Please install git-delta and configure it in the .gitconfig and -/Library/Application\ Support/jesseduffield/lazygit/config.yml
-- With this confif, lazygit will be able to use git-delta as the diff tool.
return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}
