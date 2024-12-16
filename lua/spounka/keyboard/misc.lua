vim.keymap.set({ "n", "v", "x" }, "<F12>", function()
  vim.cmd("set spell!")
end, { silent = true, desc = "F12: Toggle Spelling" })
