vim.keymap.set({ "n", "x" }, "<Leader>pl", function()
  vim.cmd("LspStart")
end, { silent = true, desc = "[P]roject [L]sp" })

vim.keymap.set({ "n", "x" }, "<Leader>ps", function()
  vim.cmd("LspStop")
end, { silent = true, desc = "[P]roject [S]top LSP" })
