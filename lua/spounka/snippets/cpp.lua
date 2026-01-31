-- ~/.config/nvim/lua/snippets/cpp.lua
local M = {}
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

M.internal = {}
M.internal.filename_to_macro = function()
  local buf = vim.api.nvim_get_current_buf()
  local file = vim.api.nvim_buf_get_name(buf)
  if file == "" then
    return nil
  end

  local root = vim.fs.root(file, {
    ".git",
    "pyproject.toml",
    "package.json",
    "Cargo.toml",
    "go.mod",
    "CMakeLists.txt",
  })
  if not root then
    local filename = vim.fn.fnamemodify(vim.fn.expand("%"), ":t:r")
    return filename:upper():gsub("[^A-Z0-9]", "_") .. "_H"
  end

  local filename = vim.fn.fnamemodify(file, ":t:r")
  root = vim.fn.fnamemodify(root, ":t:r")
  return root:upper():gsub("[^A-Z0-9]", "_") .. "_" .. filename:upper():gsub("[^A-Z0-9]", "_") .. "_H"
end

M.config = function()
  ls.add_snippets("cpp", {
    s("#guard", {
      t("#ifndef "),
      f(M.internal.filename_to_macro, {}),
      t({ "", "#define " }),
      f(M.internal.filename_to_macro, {}),
      t({ "", "", "" }),
      t({ "", "#endif // " }),
      f(M.internal.filename_to_macro, {}),
    }),
  })
end

return M
