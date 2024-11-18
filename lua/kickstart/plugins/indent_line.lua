local defines = require("spounka.defines")
return {
  { -- Add indentation guides even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = "ibl",
    event = "VeryLazy",
    ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
    opts = {},
  },
}
