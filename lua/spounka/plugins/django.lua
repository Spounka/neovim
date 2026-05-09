local function is_django_project()
  local markers = {
    "manage.py",
  }

  local path = vim.api.nvim_buf_get_name(0)
  if path == "" then
    path = vim.fn.getcwd()
  end

  local root = vim.fs.root(path, markers)
  if not root then
    return false
  end

  return vim.uv.fs_stat(root .. "/manage.py") ~= nil
end

return {
  "Jamsjz/django.nvim",
  cond = function()
    return is_django_project()
  end,

  dependencies = {
    { "nvim-telescope/telescope.nvim" }, -- Optional
    { "voldikss/vim-floaterm" }, -- Optional
  },
  config = function()
    require("django").setup({
      mappings = {
        find_app = "<leader>pdf",
        run_command = "<leader>pdd",
        django_shell = "<leader>pdn",
        new_project = "<leader>pdp",
        project_urls_file = "<leader>pdsu",
        project_settings_file = "<leader>pdss",
        project_asgi_file = "<leader>pdsa",
        project_wsgi_file = "<leader>pdsw",
      },
    })
  end,
}
