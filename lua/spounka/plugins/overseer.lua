local defines = require("spounka.defines")
return {
  "stevearc/overseer.nvim",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  lazy = true,
  opts = {},
  config = function()
    local overseer = require("overseer")
    overseer.setup({})
  end,
}
