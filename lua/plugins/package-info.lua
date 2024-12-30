
return {
  "vuki656/package-info.nvim",
  requires = "MunifTanjim/nui.nvim",
  config = function()
    vim.keymap.set({ "n" }, "<LEADER>is", require("package-info").show, { silent = true, noremap = true, desc="Show" })
    vim.keymap.set({ "n" }, "<LEADER>ic", require("package-info").hide, { silent = true, noremap = true, desc="Hide" })
    vim.keymap.set({ "n" }, "<LEADER>iu", require("package-info").update, { silent = true, noremap = true, desc="Update" })
    vim.keymap.set({ "n" }, "<LEADER>id", require("package-info").delete, { silent = true, noremap = true, desc="Delete" })
    vim.keymap.set({ "n" }, "<LEADER>ii", require("package-info").install, { silent = true, noremap = true, desc="Install" })
    vim.keymap.set({ "n" }, "<LEADER>ip", require("package-info").change_version, { silent = true, noremap = true, desc="Change version" })
  end,
}