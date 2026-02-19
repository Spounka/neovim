return {
  "p00f/clangd_extensions.nvim",
  dependencies = "neovim/nvim-lspconfig",
  ft = { "cpp", "c" },
  config = function()
    require("clangd_extensions").setup({
      extensions = {
        autoSetHints = false,
        inlay_hints = { inline = false },
      },
    })
  end,
}
