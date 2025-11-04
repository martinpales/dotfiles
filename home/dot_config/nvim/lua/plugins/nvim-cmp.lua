-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/onsails/lspkind.nvim
-- https://github.com/saadparwaiz1/cmp_luasnip
-- https://github.com/L3MON4D3/LuaSnip
-- https://github.com/rafamadriz/friendly-snippets
-- https://github.com/hrsh7th/cmp-nvim-lsp
-- https://github.com/hrsh7th/cmp-buffer
-- https://github.com/hrsh7th/cmp-path
-- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"onsails/lspkind.nvim", -- Adds VS Code-like pictograms/icons to the completion menu
		"saadparwaiz1/cmp_luasnip", -- Enables LuaSnip as a source for nvim-cmp autocompletion
		{
			"L3MON4D3/LuaSnip", -- Snippet engine for Neovim (write and expand code snippets)
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"rafamadriz/friendly-snippets", -- Large collection of pre-made snippets for various languages
		"hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for LSP-based autocompletion
		"hrsh7th/cmp-buffer", -- nvim-cmp source for words from the current buffer
		"hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths
		"hrsh7th/cmp-nvim-lsp-signature-help", -- function signatures
	},
	config = function()
		local lspkind = require("lspkind")
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
					menu = {
						-- codeium = "",
						luasnip = "",
						buffer = "",
						path = "",
						nvim_lsp = "🅻",
					},
				}),
			},

			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			sources = {
				-- { name = "codeium" },
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "nvim_lsp_signature_help" },
			},
		})
	end,
}

