-- https://github.com/golang/tools/tree/master/gopls

return function(capabilities)
	vim.lsp.config('gopls', {
		capabilities = capabilities,
		filetypes = { "go" },
	})
end

