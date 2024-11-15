return {
  {
    'mfussenegger/nvim-dap',
  },

  {
    'mxsdev/nvim-dap-vscode-js',
    dependencies = {
      'microsoft/vscode-js-debug',
      'mfussenegger/nvim-dap',
    },
  },

  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    event = 'VeryLazy',
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      dapui.setup()
      dap.listeners.after.event_initialized['dapui_config'] = function()
        vim.cmd ':Neotree close'
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        vim.cmd ':Neotree close'
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        vim.cmd ':Neotree close'
        dapui.close()
      end
    end,
  },
}
