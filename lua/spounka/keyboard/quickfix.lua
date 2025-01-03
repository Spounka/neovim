vim.keymap.set({ "n", "v", "x" }, "<M-j>", function()
  vim.cmd("cnext")
end, { silent = true, desc = "" })
vim.keymap.set({ "n", "v", "x" }, "<M-k>", function()
  vim.cmd("cprev")
end, { silent = true, desc = "" })
vim.keymap.set({ "n", "v", "x" }, "<M-CR>", function()
  vim.cmd("copen")
end, { silent = true, desc = "" })
vim.keymap.set({ "n", "v", "x" }, "<M-S-CR>", function()
  vim.cmd("cclose")
end, { silent = true, desc = "" })
