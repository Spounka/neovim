return {
  "linux-cultist/venv-selector.nvim",
  lazy = true,
  ft = "python",
  branch = "regexp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    {
      "mfussenegger/nvim-dap-python",
      lazy = true,
      ft = "python",
    },
  },
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
  },
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  },
}
