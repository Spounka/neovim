vim.keymap.set("x", "<leader>ree", ":Refactor extract ")
vim.keymap.set("x", "<leader>ref", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rev", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>riv", ":Refactor inline_var")

vim.keymap.set("n", "<leader>rif", ":Refactor inline_func")

vim.keymap.set("n", "<leader>reb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>reB", ":Refactor extract_block_to_file")
