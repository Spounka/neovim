-- Place this in your config, e.g., ~/.config/nvim/lua/user/telescope/cmake.lua
local M = {}

M.cmake_commands = {
  { command = "CMakeBuild", description = "Build the project" },
  { command = "CMakeRun", description = "Run the target" },
  { command = "CMakeDebug", description = "Start debugging" },
  { command = "CMakeSelectBuildType", description = "Select build type" },
  { command = "CMakeSelectBuildTarget", description = "Select build target" },
  { command = "CMakeGenerate", description = "Generate build files" },
  { command = "CMakeClean", description = "Clean build directory" },
  { command = "CMakeInstall", description = "Install the project" },
  { command = "CMakeReset", description = "Reset CMake cache" },
  { command = "CMakeOpen", description = "Open CMake console" },
  { command = "CMakeClose", description = "Close CMake console" },
  { command = "CMakeConfigureAll", description = "Configure all projects" },
  { command = "CMakeQuickBuild", description = "Quick build current target" },
  { command = "CMakeSelectLaunchTarget", description = "Select launch target" },
}

function M.cmake_picker()
  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  pickers
    .new({}, {
      prompt_title = "CMake Commands",
      finder = finders.new_table({
        results = M.cmake_commands,
        entry_maker = function(entry)
          return {
            value = entry.command,
            display = entry.command .. " (" .. entry.description .. ")",
            ordinal = entry.command,
          }
        end,
      }),
      sorter = conf.generic_sorter({}),
      attach_mappings = function(prompt_bufnr, map)
        actions.select_default:replace(function()
          actions.close(prompt_bufnr)
          local selection = action_state.get_selected_entry()
          vim.cmd(selection.value)
        end)
        return true
      end,
    })
    :find()
end

return M
