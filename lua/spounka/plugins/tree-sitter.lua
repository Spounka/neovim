local defines = require("spounka.defines")
-- Highlight, edit, and navigate code
return {
  "nvim-treesitter/nvim-treesitter",
  ft = defines.TREE_SITTER_ENABLED_LANGUAGES,
  lazy = false,
  build = ":TSUpdate",
  config = function()
    treesitter = require('nvim-treesitter')
    treesitter.setup({})
    treesitter.install(defines.TREE_SITTER_ENSURE_INSTALLED)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = defines.TREE_SITTER_ENABLED_LANGUAGES,
      callback = function() vim.treesitter.start()end,
    })
  end,
}
