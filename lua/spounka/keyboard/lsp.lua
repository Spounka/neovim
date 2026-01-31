vim.keymap.set({ "n", "x" }, "<Leader>pl", function()
  vim.cmd("LspStart")
end, { silent = true, desc = "[P]roject [L]sp" })

vim.keymap.set({ "n", "x" }, "<Leader>ps", function()
  vim.cmd("LspStop")
end, { silent = true, desc = "[P]roject [S]top LSP" })

vim.keymap.set({ "n", "x", "v" }, "<M-o>", function()
  vim.cmd("LspClangdSwitchSourceHeader")
end, { silent = false, desc = "Switch Header Source Files" })

vim.keymap.set({ "n", "i", "v" }, "<leader>is", vim.lsp.buf.signature_help, { desc = "[I]nformation [S]ignature Help" })
