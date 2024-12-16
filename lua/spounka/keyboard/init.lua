-- require("spounka.keyboard.buffers")
-- require("spounka.keyboard.debug")
-- require("spounka.keyboard.lsp")
-- require("spounka.keyboard.fugitive")
-- require("spounka.keyboard.refactoring")
-- require("spounka.keyboard.misc")
-- require("spounka.keyboard.quickfix")
--

local keyboard_dir = vim.fn.stdpath("config") .. "/lua/spounka/keyboard/"

-- Function to load all Lua files in the 'keyboard' directory
local function load_keyboard_modules()
  -- Get all Lua files in the 'keyboard' folder, excluding 'init.lua'
  local files = vim.fn.glob(keyboard_dir .. "*.lua", false, true)
  for _, file in ipairs(files) do
    -- Extract the module name by removing the path and '.lua' extension
    local module_name = file:match(".*/(.*)%.lua")
    if module_name and module_name ~= "init" then
      -- Dynamically require the module (remove the '.lua' extension)
      require("spounka.keyboard." .. module_name)
    end
  end
end

-- Call the function to load all the modules in 'keyboard'
load_keyboard_modules()
