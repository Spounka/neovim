-- Place this in your config, e.g., ~/.config/nvim/lua/user/telescope/cmake.lua
local M = {}

M.overseer_commands = {
  { command = "OverseerToggle",     description = "Overseer Toggle" },
  { command = "OverseerTaskOpen",   description = "Overseer Task Open" },
  { command = "OverseerClose",      description = "Overseer Close" },
  { command = "OverseerRun",        description = "Overseer Run" },
  { command = "OverseerShell",      description = "Overseer Shell" },
  { command = "OverseerTaskAction", description = "Overseer Task Action" },
}

function M.overseer_picker()
  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  pickers
    .new({}, {
      prompt_title = "Overseer Commands",
      finder = finders.new_table({
        results = M.overseer_commands,
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
