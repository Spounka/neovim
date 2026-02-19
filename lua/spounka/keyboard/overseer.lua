vim.keymap.set({ "v", "n" }, "<leader>pom", function()
  require("spounka.telescope.overseer").overseer_picker()
end, { noremap = true, silent = true, desc = "[O]verseer Commands" })

