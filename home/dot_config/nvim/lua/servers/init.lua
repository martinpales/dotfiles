local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language Server Protocol (LSP)
require("servers.lua-ls")(capabilities)
require("servers.gopls")(capabilities)

-- Linters & Formatters
require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
	"lua_ls",
	"gopls",
	"efm",
})
