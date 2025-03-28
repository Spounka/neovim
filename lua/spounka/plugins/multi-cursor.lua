local defines = require("spounka.defines")
return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  cond = false,
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  dependencies = {
    "smoka7/hydra.nvim",
  },
  opts = {},
  cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  keys = {
    {
      mode = { "v", "n" },
      "<Leader>m",
      "<cmd>MCstart<cr>",
      desc = "Create a selection for selected text or word under the cursor",
    },
  },
}
