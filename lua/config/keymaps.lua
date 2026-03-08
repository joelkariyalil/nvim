vim.keymap.set("n", "<leader>f", function()
  require("telescope.builtin").find_files()
end, { desc = "Fuzzy Find Files" })

vim.keymap.set("n", "<leader>g", function()
  require("telescope.builtin").live_grep()
end, { desc = "Grep in Project" })
