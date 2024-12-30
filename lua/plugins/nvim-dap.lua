return {
  'mfussenegger/nvim-dap',
  config = function()

    -- DAP setup should be done here after the plugin is loaded
    local dap = require('dap')
    

    -- dap.adapters.java = {
    --   type = "executable",
    --   command = "java",
    --   args = {
    --     "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,quiet=y",
    --     "-jar",
    --     vim.fn.stdpath("data") .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-0.53.0.jar",
    --   },
    -- }

-- dap.configurations.java = {
--   {
--     type = 'java',
--     request = 'launch',
--     name = 'Launch Spring Boot',
--     mainClass = 'in.acecart.demo1.Demo1Application',
--     projectRoot = '${workspaceFolder}',
--     vmArgs = '-Dspring.profiles.active=dev', -- Add JVM options here
--     args = '', -- Arguments for the application
--   },
-- }

-- dap.configurations.java = {
--   {
--     type = 'java',
--     request = 'attach',
--     name = 'Attach to Spring Boot',
--     hostName = 'localhost',
--     port = 5005,
--   },
-- }

    -- If you're using dap-ui, set it up here as well
    -- require("dapui").setup()

    -- Add key mappings for debugging
    vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true })
  end
}
