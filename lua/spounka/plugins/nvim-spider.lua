local defines = require("spounka.defines")
return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  ft = defines.DEBUG_LAZY_FILE_TYPES,
  keys = {
    -- lazy.nvim
    {
      "e",
      "<cmd>lua require('spider').motion('e')<CR>",
      mode = { "n", "o", "x" },
    },

    {
      "w",
      "<cmd>lua require('spider').motion('w')<CR>",
      mode = { "n", "o", "x" },
      { desc = "Spider-w" },
    },
    {
      "b",
      "<cmd>lua require('spider').motion('b')<CR>",
      mode = { "n", "o", "x" },
      { desc = "Spider-b" },
    },
  },
}
