-- Create an augroup for organizing autocmds
local autosave_group = vim.api.nvim_create_augroup('autosave', { clear = true })

-- Define the autocmd
vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'VimLeavePre' }, {
  group = autosave_group,
  callback = function(event)
    -- Check if the buffer is modified
    if vim.api.nvim_buf_get_option(event.buf, 'modified') then
      vim.schedule(function()
        vim.api.nvim_buf_call(event.buf, function()
          -- Write the buffer silently
          vim.cmd('silent! write')
        end)
      end)
    end
  end,
})
