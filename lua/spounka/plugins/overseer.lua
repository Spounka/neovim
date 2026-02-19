local defines = require("spounka.defines")

return {
  "stevearc/overseer.nvim",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  opts = {},
  keys = {
    {
      "<leader>pot",
      "<cmd>OverseerToggle<CR>",
      { desc = "[P]roject [O]verseer [T]oggle" },
    },
  },
  config = function()
    local overseer = require("overseer")
    overseer.setup({})
  end,
}
