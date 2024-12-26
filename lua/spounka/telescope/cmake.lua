-- Place this in your config, e.g., ~/.config/nvim/lua/user/telescope/cmake.lua
local M = {}

M.cmake_commands = {
  { command = "CMakeBuild", description = "Build the project" },
  { command = "CMakeBuildCurrentFile", description = "Build current file " },
  { command = "CMakeClean", description = "Clean build directory" },
  { command = "CMakeCloseExecutor", description = "Close CMake executor" },
  { command = "CMakeCloseRunner", description = "Close CMake runner" },
  { command = "CMakeDebug", description = "Start debugging" },
  { command = "CMakeDebugCurrentFile", description = "Start debugging current file" },
  { command = "CMakeGenerate", description = "Generate build files" },
  { command = "CMakeInstall", description = "Install the project" },
  { command = "CMakeLaunchArgs", description = "Launch target with args" },
  { command = "CMakeOpenExecutor", description = "Open CMake executor" },
  { command = "CMakeOpenRunner", description = "Open CMake runner" },
  { command = "CMakeQuickBuild", description = "Quick build current target" },
  { command = "CMakeQuickDebug", description = "Quick debug current target" },
  { command = "CMakeQuickRun", description = "Quick debug current target" },
  { command = "CMakeRun", description = "Run the target" },
  { command = "CMakeRunCurrentFile", description = "Run current file" },
  { command = "CMakeRunTest", description = "Run test" },
  { command = "CMakeSelectBuildDir", description = "Select build directory" },
  { command = "CMakeSelectBuildPreset", description = "Select build preset" },
  { command = "CMakeSelectBuildTarget", description = "Select build target" },
  { command = "CMakeSelectBuildType", description = "Select build type" },
  { command = "CMakeSelectConfigurePreset", description = "Select conf preset" },
  { command = "CMakeSelectCwd", description = "Select conf preset" },
  { command = "CMakeSelectKit", description = "Select build kit" },
  { command = "CMakeSelectKit", description = "Select build kit" },
  { command = "CMakeSelectLaunchTarget", description = "Select launch target" },
  { command = "CMakeSettings", description = "Settings" },
  { command = "CMakeReset", description = "Reset CMake cache" },
  { command = "CMakeClose", description = "Close CMake console" },
  { command = "CMakeTargetSettings", description = "Target Settings" },
  { command = "CMakeStopExecutor", description = "Stop CMake executor" },
  { command = "CMakeStopRunner", description = "Stop CMake runner" },
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
