-- Autoformat
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = false,
    formatters_by_ft = {
      lua = { "stylua" },
      cmake = { "cmake_format" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      -- Conform can also run multiple formatters sequentially
      python = { "isort", "black" },
      go = {},
      markdown = { "markdownlint" },
      typescript = { "prettier", "biome", stop_after_first = true },
      typescriptreact = { "prettier", "biome", stop_after_first = true },
      javascript = { "prettier", "biome", stop_after_first = true },
      javascriptreact = { "prettier", "biome", stop_after_first = true },
      --
      -- You can use "stop_after_first" to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
}
