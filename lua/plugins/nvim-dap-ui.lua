return {
  'rcarriga/nvim-dap-ui',
  config = function()
    -- Ensure this is inside the config function after loading the plugin
    local dapui = require("dapui")
    dapui.setup()

    -- Automatically open dap-ui when debugging starts
    require('dap').listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    -- Automatically close dap-ui when debugging ends
    require('dap').listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    require('dap').listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end
}
