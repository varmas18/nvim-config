-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.clipboard = "unnamedplus"
require('autocmds')
require('package-info').setup()


local function change_nvim_tree_dir()
	require("neo-tree").setup({
            -- Your Neo-tree settings go here
        })
        vim.cmd("Neotree show")
        vim.defer_fn(function()
		  vim.cmd("Neotree reveal")
		end, 500)
end

require("auto-session").setup({
	log_level = "error",
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	post_restore_cmds = { change_nvim_tree_dir },
	pre_save_cmds = { "NvimTreeClose" },
})

-- require('config.dap')

-- require('lualine').setup {
--       options = {
--         icons_enabled = true,
--         theme = 'auto',
--         component_separators = { left = '', right = ''},
--         section_separators = { left = '', right = ''},
--         disabled_filetypes = {
--           statusline = {},
--           winbar = {},
--         },
--         ignore_focus = {},
--         always_divide_middle = true,
--         globalstatus = false,
--         refresh = {
--           statusline = 1000,
--           tabline = 1000,
--           winbar = 1000,
--         }
--       },
--       sections = {
--         lualine_a = {'mode'},
--         lualine_b = {'branch', 'diff', 'diagnostics'},
--         lualine_c = {'filename'},
--         lualine_x = {'encoding', 'fileformat', 'filetype'},
--         lualine_y = {'progress'},
--         lualine_z = {'location'}
--       },
--       inactive_sections = {
--         lualine_a = {},
--         lualine_b = {},
--         lualine_c = {'filename'},
--         lualine_x = {'location'},
--         lualine_y = {},
--         lualine_z = {}
--       },
--       tabline = {},
--       winbar = {},
--       inactive_winbar = {},
--       extensions = {}
--     }