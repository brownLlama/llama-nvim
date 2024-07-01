-- Movement around the brackets and quotes 
return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
    })
  end,
}

-- Keymaps
-- surr*ound_words             ysiw)           (surround_words)
-- surround_selected_text      veeS"           "surround selected text"
-- surrouding entire line      yss)            (surrounding entire line)
-- [delete ar*ound me!]        ds]             delete around me!
-- 'change quot*es'            cs'"            "change quotes"
-- *make strings               ys$"            "make strings"
-- repeat action               .
