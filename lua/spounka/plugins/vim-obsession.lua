local defines = require("spounka.defines")
return {
  "tpope/vim-obsession",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  lazy = true,
}
