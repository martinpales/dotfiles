return {
	"savq/melange-nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme melange")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	end,
}

-- return {
-- 	"rmehri01/onenord.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("onenord").setup({
-- 			disable = {
-- 				background = true,
-- 			},
-- 		})
-- 		vim.cmd.colorscheme = "onenord"
-- 	end,
-- }

-- return {
-- 	"gmr458/vscode_modern_theme.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("vscode_modern").setup({
-- 			cursorline = false,
-- 			transparent_background = true,
-- 			nvim_tree_darker = true,
-- 			terminal_colors = true,
-- 		})
-- 		vim.cmd.colorscheme("vscode_modern")
-- 	end,
-- }

-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("vscode").setup({
-- 			transparent = true,
-- 			terminal_colors = true,
-- 		})
-- 		vim.cmd.colorscheme("vscode")
-- 		-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 		-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- 	end,
-- }

-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("nightfox").setup({
-- 			options = {
-- 				transparent = true,
-- 				terminal_colors = true,
-- 			},
-- 		})
--
-- 		vim.cmd.colorscheme("nightfox")
-- 	end,
-- }
