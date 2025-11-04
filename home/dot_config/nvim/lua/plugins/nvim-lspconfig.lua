-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/mason-org/mason.nvim
-- https://github.com/creativenull/efmls-configs-nvim
-- https://github.com/hrsh7th/cmp-nvim-lsp

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} }, -- LSP/DAP/Linter installer & manager
    "creativenull/efmls-configs-nvim", -- Preconfigured EFM Language Server setups
    "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for LSP-based completion
	},
	config = function()
		require("utils.diagnostics").setup()
		require("servers")
	end,
}
