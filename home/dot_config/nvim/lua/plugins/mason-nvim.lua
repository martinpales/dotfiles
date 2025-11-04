-- https://github.com/mason-org/mason.nvim
-- https://github.com/mason-org/mason-lspconfig.nvim
-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason-tool-installer").setup({
			lazy = true,
			ensure_installed = {
				"gofumpt",
				"gopls",
				"lua_ls",
				"revive",
				"stylua",
			},
		})
	end,
	-- opts = {
	-- 	ensure_installed = {
	-- 		"efm",
	-- 		"gopls",
	-- 		"lua_ls",
	-- 		"stylua",
	-- 	},
	-- },
}
