local defines = require("spounka.defines")

return {
  "ThePrimeagen/refactoring.nvim",
  ft = defines.REFACTOR_LAZY_FILES_TYPES,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup({})
  end,
}
