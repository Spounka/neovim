local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
require("lazy").setup({
  require("kickstart.plugins.debug"),
  require("kickstart.plugins.indent_line"),
  require("kickstart.plugins.lint"),
  require("kickstart.plugins.autopairs"),
  require("kickstart.plugins.neo-tree"),
  require("kickstart.plugins.gitsigns"), -- adds gitsigns recommend keymaps

  { import = "spounka.plugins" },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = {},
    -- icons = vim.g.have_nerd_font and {} or {
    --   cmd = "⌘",
    --   config = "🛠",
    --   event = "📅",
    --   ft = "📂",
    --   init = "⚙",
    --   keys = "🗝",
    --   plugin = "🔌",
    --   runtime = "💻",
    --   require = "🌙",
    --   source = "📄",
    --   start = "🚀",
    --   task = "📌",
    --   lazy = "💤 ",
    -- },
  },
  checker = { enabled = false },
  change_detection = {
    enabled = false,
    notify = false,
  },
})
