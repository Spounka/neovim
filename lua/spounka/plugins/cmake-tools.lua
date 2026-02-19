return {
  "Civitasv/cmake-tools.nvim",
  dependencies = {
    { "akinsho/toggleterm.nvim", version = "*", config = true },
  },
  ft = { "cpp", "c", "cmake" },
  config = function()
    require("cmake-tools").setup({
      cmake_dap_configuration = {
        console = "integratedTerminal",
      },
      cmake_runner = {
        name = "toggleterm",
        default_opts = {
          quickfix = {
            auto_close_when_success = false,
          },
          toggleterm = {
            direction = "float",
            close_on_exit = false,
          },
        },
      },
    })
  end,
}
