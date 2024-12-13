vim.keymap.set({ "n", "x" }, "<Leader>pl", function()
  vim.cmd("LspStart")
end, { silent = true, desc = "[P]roject [L]sp" })

vim.keymap.set({ "n", "x" }, "<Leader>ps", function()
  vim.cmd("LspStop")
end, { silent = true, desc = "[P]roject [S]top LSP" })

vim.keymap.set({ "n", "x", "v" }, "<M-o>", function()
  vim.cmd("ClangdSwitchSourceHeader")
end, { silent = false, desc = "Switch Header Source Files" })
