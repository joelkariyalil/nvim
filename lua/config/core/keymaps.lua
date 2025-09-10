vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

-- Theme switching keymaps (Ultra Dark Contrast Themes with White Text)
vim.keymap.set("n", "<leader>th1", "<cmd>colorscheme vscode<CR>", { desc = "VS Code Ultra Dark + White Text" })
vim.keymap.set("n", "<leader>th2", "<cmd>colorscheme tokyonight-night<CR>", { desc = "Tokyo Night Ultra Dark + White Text" })
vim.keymap.set("n", "<leader>th3", "<cmd>colorscheme onedark<CR>", { desc = "Pure Black + White Text" })
vim.keymap.set("n", "<leader>th4", "<cmd>colorscheme catppuccin-mocha<CR>", { desc = "Catppuccin Dark" })

-- Quick reload current colorscheme
vim.keymap.set("n", "<leader>thr", function()
	local current_scheme = vim.g.colors_name or "vscode"
	vim.cmd("colorscheme " .. current_scheme)
	vim.notify("Reloaded colorscheme: " .. current_scheme)
end, { desc = "Reload Current Theme" })

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
