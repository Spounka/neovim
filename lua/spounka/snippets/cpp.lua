-- ~/.config/nvim/lua/snippets/cpp.lua
local M = {}
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

M.internal = {}
M.internal.filename_to_macro = function ()
  return vim.fn.expand("%:t"):upper():gsub("[^A-Z0-9]", "_") .. "_H"
end

M.config = function ()
  ls.add_snippets("cpp", {
    s("guard", {
      t("#ifndef "), f(M.internal.filename_to_macro, {}),
      t({"", "#define "}), f(M.internal.filename_to_macro, {}),
      t({"", "", ""}),
      t({"", "#endif // "}), f(M.internal.filename_to_macro, {}),
    }),
  })
end
