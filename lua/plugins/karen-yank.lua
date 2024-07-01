--[[
Usage
After installation there is nothing to do besides enjoying cleaner registers.

Delete keys like d, D, c etc. will genuinely delete by default, and cut in a <karen><delete key> key-chord.
Your yanks and cuts are also extended to use VIMs number registers while keeping them free of duplicates.

Keymaps
By default, karen is mapped to y.

a motion like ciw will delete a word and start insert, while yciw will cut a word and start insert. dd deletes a line, ydd cuts a line etc.
in visual mode yd pressed in timeoutlen will cut. While just y will yank as usual after timeoutlen (or immediately when followed by something like a movement with j. So no impairments with fast typing)
--]]

return {
  "tenxsoydev/karen-yank.nvim",
  config = true,
}
