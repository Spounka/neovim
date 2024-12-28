local snippets_dir = vim.fn.stdpath("config") .. "/lua/spounka/snippets/"

-- Function to load all Lua files in the 'keyboard' directory
local function load_snippet_modules()
  -- Get all Lua files in the 'keyboard' folder, excluding 'init.lua'
  local files = vim.fn.glob(snippets_dir .. "*.lua", false, true)
  for _, file in ipairs(files) do
    -- Extract the module name by removing the path and '.lua' extension
    local module_name = file:match(".*/(.*)%.lua")
    if module_name and module_name ~= "init" then
      -- Dynamically require the module (remove the '.lua' extension)
      local module = require("spounka.snippets." .. module_name)
      module.config()
    end
  end
end

-- Call the function to load all the modules in 'keyboard'
load_snippet_modules()
