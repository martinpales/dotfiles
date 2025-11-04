-- https://github.com/mattn/efm-langserver
-- https://github.com/creativenull/efmls-configs-nvim/tree/main

return function(capabilities)
	local luacheck = require("efmls-configs.linters.luacheck") -- lua linter
	local stylua = require("efmls-configs.formatters.stylua") -- lua formatter
	local go_revive = require("efmls-configs.linters.go_revive") -- go linter
	local gofumpt = require("efmls-configs.formatters.gofumpt") -- go formatter

	vim.lsp.config("efm", {
		capabilities = capabilities,
		filetypes = {
			"go",
			"lua",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				go = { go_revive, gofumpt },
				lua = { luacheck, stylua },
			},
		},
	})
end
