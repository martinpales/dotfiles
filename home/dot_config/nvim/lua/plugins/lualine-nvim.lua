-- https://github.com/nvim-lualine/lualine.nvim

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		-- require("lualine").setup({
		-- 	options = {
		-- 		theme = "visual_studio_code",
		-- 		icons_enabled = true,
		-- 		component_separators = { left = "", right = "" },
		-- 		section_separators = { left = "", right = "" },
		-- 		disabled_filetypes = {},
		-- 		globalstatus = true,
		-- 		refresh = {
		-- 			statusline = 100,
		-- 		},
		-- 	},
		-- 	sections = require("visual_studio_code").get_lualine_sections(),
		-- })
		require("lualine").setup({
			options = {
				-- theme = "onehalfdark",
				theme = "melange",
				icons_enabled = true,
				-- section_separators = { left = "", right = "" },
				component_separators = "|",
			},
		})
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
