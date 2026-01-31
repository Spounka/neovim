vim.keymap.set({ "v", "n" }, "<leader>cm", function()
  require("spounka.telescope.cmake").cmake_picker()
end, { noremap = true, silent = true, desc= "C[M]ake Commands" })
