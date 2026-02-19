local defines = require("spounka.defines")
return {
  "nvim-neotest/neotest",
  cond = false,
  ft = defines.REFACTOR_LAZY_FILES_TYPES,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
