local defines = require("spounka.defines")
-- Highlight todo, notes, etc in comments
return {
  "folke/todo-comments.nvim",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { signs = false },
}
