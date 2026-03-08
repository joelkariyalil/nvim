--[[
  HOW TO FIND COMMANDS & KEYBINDS
  - Press <Space> and wait: which-key shows all leader keymaps.
  - <Space>? : buffer-local keymaps only.
  - :Telescope keymaps : search all keymaps.
  - :help : to browse Neovim docs.
  Start a project: open a folder, e.g.  nvim /path/to/project  or  :cd /path/to/project
--]]
require("config.core")
require("config.lazy")
vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave", "TextChanged" }, {
  command = "silent! update",
})
