-- Never manually save/write a buffer again!

return {
  "tmillr/sos.nvim",
  enabled = true,
  config = function()
    require("sos").setup({
      enabled = true,
      autowrite = true,
      save_on_cmd = "some",
      save_on_focuslost = true,
      save_on_bufleave = true,
    })
  end,
}
