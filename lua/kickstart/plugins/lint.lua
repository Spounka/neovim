local defines = require("spounka.defines")

-- Linting
return {
  {
    "mfussenegger/nvim-lint",
    ft = defines.REFACTOR_LAZY_FILES_TYPES,
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        markdown = { "markdownlint" },
        python = { "flake8", "mypy" },
        typescript = { "eslint_d" },
        tsx = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        lua = { "luacheck" },
        dockerfile = { "hadolint" },
        cmake = { "cmakelint" },
      }

      -- Create autocommand which carries out the actual linting
      -- on the specified events.
      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          -- Only run the linter in buffers that you can modify in order to
          -- avoid superfluous noise, notably within the handy LSP pop-ups that
          -- describe the hovered symbol using Markdown.
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
