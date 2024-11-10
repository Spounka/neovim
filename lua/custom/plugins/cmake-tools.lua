return {
  'Civitasv/cmake-tools.nvim',
  cond = false,
  config = function()
    require('cmake-tools').setup {
      cmake_dap_configuration = {
        -- console = "toggleterm"
      },
      cmake_runner = {
        name = 'toggleterm',
        default_opts = {
          quickfix = {
            auto_close_when_success = false,
          },
          toggleterm = {
            direction = 'tab',
            close_on_exit = true,
          },
        },
      },
    }
  end,
}
