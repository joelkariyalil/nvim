return {
	-- VS Code Dark+ theme with enhanced dark contrast
	{
		"Mofiqul/vscode.nvim",
		priority = 1000,
		config = function()
			require('vscode').setup({
				-- Make background very dark
				transparent = false,
				italic_comments = true,
				disable_nvimtree_bg = false,
				-- Override colors for maximum dark contrast with white text
				color_overrides = {
					vscBack = '#0a0a0a',  -- Very dark background
					vscTabCurrent = '#1e1e1e',
					vscTabOther = '#0a0a0a',
					vscTabOutside = '#0a0a0a',
					vscLeftDark = '#0a0a0a',
					vscLeftMid = '#1e1e1e',
					vscSplitLight = '#333333',
					vscSplitDark = '#1e1e1e',
					vscPopupHighlightBlue = '#004080',
					vscPopupHighlightGray = '#333333',
					vscLineNumber = '#888888',
					vscContext = '#ffffff',  -- White text
					vscContextCurrent = '#ffffff',
					vscFront = '#ffffff',  -- Main text color
				},
				-- Override highlight groups for maximum contrast with white text
				group_overrides = {
					Normal = { fg = '#ffffff', bg = '#0a0a0a' },  -- Pure white text
					NormalFloat = { fg = '#ffffff', bg = '#1e1e1e' },
					NormalNC = { fg = '#ffffff', bg = '#0a0a0a' },
					LineNr = { fg = '#888888', bg = '#0a0a0a' },
					CursorLineNr = { fg = '#ffffff', bg = '#0a0a0a' },
					SignColumn = { fg = '#888888', bg = '#0a0a0a' },
					StatusLine = { fg = '#ffffff', bg = '#007acc' },
					StatusLineNC = { fg = '#ffffff', bg = '#333333' },
					VertSplit = { fg = '#333333' },
					WinSeparator = { fg = '#333333' },
					Pmenu = { fg = '#ffffff', bg = '#1e1e1e' },
					PmenuSel = { fg = '#ffffff', bg = '#094771' },
					TabLine = { fg = '#ffffff', bg = '#1e1e1e' },
					TabLineFill = { bg = '#0a0a0a' },
					TabLineSel = { fg = '#ffffff', bg = '#007acc' },
					-- Code syntax highlighting with white base
					Comment = { fg = '#888888', italic = true },
					String = { fg = '#ce9178' },  -- Orange strings
					Number = { fg = '#b5cea8' },  -- Green numbers
					Boolean = { fg = '#569cd6' }, -- Blue booleans
					Keyword = { fg = '#c586c0' }, -- Purple keywords
					Function = { fg = '#dcdcaa' }, -- Yellow functions
					Variable = { fg = '#ffffff' }, -- White variables
					Type = { fg = '#4ec9b0' },    -- Cyan types
					Operator = { fg = '#ffffff' }, -- White operators
				}
			})
			vim.cmd.colorscheme('vscode')
			
			-- Additional dark contrast enhancements with pure white text
			vim.cmd([[
				highlight Normal guibg=#0a0a0a guifg=#ffffff
				highlight NonText guibg=#0a0a0a guifg=#888888
				highlight EndOfBuffer guibg=#0a0a0a guifg=#0a0a0a
				highlight TermCursor guibg=#ffffff guifg=#000000
				highlight Cursor guibg=#ffffff guifg=#000000
				highlight Visual guibg=#264f78 guifg=#ffffff
				highlight Search guibg=#613315 guifg=#ffffff
				highlight IncSearch guibg=#9e6a03 guifg=#ffffff
				highlight CursorLine guibg=#1a1a1a
				highlight ColorColumn guibg=#1a1a1a
				highlight Folded guibg=#1a1a1a guifg=#ffffff
				highlight FoldColumn guibg=#0a0a0a guifg=#888888
				highlight MatchParen guibg=#666666 guifg=#ffffff
			]])
		end,
	},
	
	-- Alternative: Tokyo Night (Ultra Dark Contrast)
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = false,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				-- Ultra dark modifications
				on_colors = function(colors)
					colors.bg = "#000000"  -- Pure black background
					colors.bg_dark = "#000000"
					colors.bg_float = "#0a0a0a"
					colors.bg_popup = "#0a0a0a"
					colors.bg_sidebar = "#000000"
					colors.bg_statusline = "#000000"
				end,
				on_highlights = function(highlights, colors)
					highlights.Normal = { fg = "#ffffff", bg = "#000000" }  -- Pure white text
					highlights.NormalFloat = { fg = "#ffffff", bg = "#0a0a0a" }
					highlights.SignColumn = { bg = "#000000" }
					highlights.LineNr = { fg = "#888888", bg = "#000000" }
					highlights.CursorLineNr = { fg = "#ffffff", bg = "#000000" }
					highlights.Comment = { fg = "#888888", italic = true }
					highlights.String = { fg = "#9ece6a" }
					highlights.Number = { fg = "#ff9e64" }
					highlights.Boolean = { fg = "#ff9e64" }
					highlights.Keyword = { fg = "#bb9af7" }
					highlights.Function = { fg = "#7aa2f7" }
					highlights.Variable = { fg = "#ffffff" }
					highlights.Type = { fg = "#2ac3de" }
					highlights.Operator = { fg = "#ffffff" }
				end,
			})
		end,
	},
	
	-- Alternative: Pure Dark Theme (Maximum Contrast)
	{
		"navarasu/onedark.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require('onedark').setup({
				style = 'deep', -- dark, darker, cool, deep, warm, warmer
				transparent = false,
				term_colors = true,
				ending_tildes = false,
				cmp_itemkind_reverse = false,
				-- Custom background override for ultra dark
				colors = {
					bg0 = "#000000",  -- Pure black
					bg1 = "#0a0a0a",
					bg2 = "#1a1a1a",
					bg3 = "#2a2a2a",
					bg_d = "#000000",
					bg_blue = "#000080",
					bg_yellow = "#444400",
				},
				highlights = {
					Normal = { fg = "#ffffff", bg = "#000000" },  -- Pure white text
					NormalFloat = { fg = "#ffffff", bg = "#0a0a0a" },
					SignColumn = { bg = "#000000" },
					LineNr = { fg = "#888888", bg = "#000000" },
					CursorLineNr = { fg = "#ffffff", bg = "#000000" },
					Comment = { fg = "#888888", italic = true },
					String = { fg = "#98c379" },
					Number = { fg = "#d19a66" },
					Boolean = { fg = "#d19a66" },
					Keyword = { fg = "#c678dd" },
					Function = { fg = "#61afef" },
					Variable = { fg = "#ffffff" },
					Type = { fg = "#56b6c2" },
					Operator = { fg = "#ffffff" },
				},
			})
		end,
	},
	
	-- Alternative: Catppuccin (Modern dark theme with excellent contrast)
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { 
					light = "latte",
					dark = "mocha",
				},
				transparent_background = false,
				show_end_of_buffer = false,
				term_colors = false,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
				no_italic = false,
				no_bold = false,
				no_underline = false,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					telescope = true,
					which_key = true,
				},
			})
		end,
	},
}
