-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {}, -- your configuration
  config = function()
    require("tailwind-tools").setup({})
    vim.keymap.set({ "n", "i", "x" }, "<leader>F", function()
      print("sorting tailwind...")
      vim.cmd("TailwindSort")
    end, {
      desc = "Sort Tailwind Classes",
    })
    vim.keymap.set({ "v" }, "<leader>F", function()
      vim.cmd("TailwindSortSelection")
    end, {
      desc = "Sort Selection Tailwind Classes",
    })
  end,
}
