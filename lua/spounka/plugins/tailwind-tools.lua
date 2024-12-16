-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  lazy = true,
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {}, -- your configuration
  keys = {
    {
      "<leader>F",
      function()
        print("sorting tailwind...")
        vim.cmd("TailwindSort")
      end,
      mode = { "n", "i", "x" },
      desc = "Sort Tailwind Classes",
    },
    {
      "<leader>F",
      ":TailwindSortSelection",
      mode = { "v" },
      desc = "Sort Tailwind Classes in Selection",
    },
  },
}
