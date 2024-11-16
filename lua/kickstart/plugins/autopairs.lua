-- autopairs
-- https://github.com/windwp/nvim-autopairs

local defines = require("spounka.defines")

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  -- Optional dependency
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    require("nvim-autopairs").setup({})
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
