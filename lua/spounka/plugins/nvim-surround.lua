local defines = require("spounka.defines")
return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  lazy = true,
  config = function()
    require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
    })
  end,
}
