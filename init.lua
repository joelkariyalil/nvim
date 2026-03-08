require("config.core")
require("config.lazy")
vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave", "TextChanged" }, {
  command = "silent! update",
})
