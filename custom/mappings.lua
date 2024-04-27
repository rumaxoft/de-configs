---@type MappingsTable
local M = {}

M.telescope = {
	n = {
		["<leader>fr"] = { "<cmd>Telescope resume<CR>", "telescope resume last search" },
  },
}

M.undotree = {
	n = {
		["<leader>u"] = {
			function()
				require("undotree").toggle()
			end,
			"Toggle undo tree",
		},
	},
}

-- Primagen mappings
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<leader>q"] = { "<cmd>q<CR>", "quit tab" },
		["<leader>ww"] = { "<cmd>w<CR>", "save" },
		["<leader>mm"] = {
			function()
				require("mini.map").toggle()
			end,
			"toggle minimap",
		},

		["<leader>mr"] = {
			function()
				require("mini.map").refresh()
			end,
			"refresh minimap",
		},

		["<leader>mf"] = {
			function()
				require("mini.map").toggle_focus()
			end,
			"refresh minimap",
		},
		-- ufo folding keymaps
		["zR"] = {
			function()
				require("ufo").openAllFolds()
			end,
			"open all folds",
		},
		["zM"] = {
			function()
				require("ufo").closeAllFolds()
			end,
			"close all folds",
		},

		--  format with conform
		["<leader>fm"] = {
			function()
				require("conform").format()
			end,
			"formatting",
		},

		["<leader>s"] = { "<cmd>%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left><CR>" },
		["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
		["<leader>9"] = { "<cmd>vsplit<CR>", "Vertical split" },
		["<leader>0"] = { "<cmd>split<CR>", "Horizontal split" },
		["<leader>gl"] = {
			":Flog<CR>",
			"Git Log",
		},
		["<leader>rb"] = {
			"<cmd>Gitsigns reset_buffer<CR>",
			"Reset buffer",
		},
		["<leader>gs"] = {
			"<cmd>Floggit<CR>",
			"Git Status",
		},
		["<leader>gd"] = {
			"<cmd>DiffviewFileHistory<CR>",
			"Git Branch History",
		},
		["<leader>gf"] = {
			"<cmd>DiffviewFileHistory %<CR>",
			"Git File History",
		},
		["<leader>gc"] = {
			"<cmd>DiffviewOpen HEAD^<CR>",
			"Git Last Commit",
		},
		["<leader>gt"] = {
			"<cmd>DiffviewToggleFile<CR>",
			"Git Last Commit",
		},
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
	t = {
		-- ["<C-i>"] = {
		--   vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
		--   "Escape terminal mode (custom)",
		-- },
		["<C-h>"] = {
			vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>h", true, true, true),
			"Window left",
		},
		["<C-l>"] = {
			vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>l", true, true, true),
			"Window right",
		},
		["<C-j>"] = {
			vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>j", true, true, true),
			"Window down",
		},
		["<C-k>"] = {
			vim.api.nvim_replace_termcodes("<C-\\><C-N><C-w>k", true, true, true),
			"Window up",
		},
	},
}

-- more keybinds!

return M
