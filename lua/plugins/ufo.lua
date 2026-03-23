return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = { "BufReadPost", "BufNewFile" },
	init = function()
		vim.o.foldcolumn = "1"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
		vim.o.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:"
	end,
	config = function()
		vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds (ufo)" })
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds (ufo)" })

		vim.keymap.set("n", "<leader>zf", function()
			vim.cmd("normal! zc")
		end, { desc = "Fold block at cursor (close fold here)" })
		vim.keymap.set("n", "<leader>zo", function()
			vim.cmd("normal! zo")
		end, { desc = "Open fold at cursor" })
		vim.keymap.set("n", "<leader>zF", function()
			vim.cmd("normal! zC")
		end, { desc = "Fold recursively from cursor (close nested folds)" })
		vim.keymap.set("n", "<leader>zO", function()
			vim.cmd("normal! zO")
		end, { desc = "Open folds recursively from cursor" })

		require("ufo").setup({})
	end,
}
