local defines = require("spounka.defines")
return {
  "Exafunction/codeium.nvim",
  lazy = true,
  cond = false,
  ft = defines.REFACTOR_LAZY_FILES_TYPES,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({})
  end,
}
