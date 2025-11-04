-- https://github.com/nvim-tree/nvim-tree.lua

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		-- Remove background color from the NvimTree window (ui fix)
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

		require("nvim-tree").setup({
			filters = {
				dotfiles = false, -- Show hidden files (dotfiles)
			},
			view = {
				adaptive_size = true,
			},
			sort = {
				-- sorter = "case_sensitive",
			},
		})

		local nvimTreeFocusOrToggle = function()
			local nvimTree = require("nvim-tree.api")
			local currentBuf = vim.api.nvim_get_current_buf()
			local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
			if currentBufFt == "NvimTree" then
				nvimTree.tree.toggle()
			else
				nvimTree.tree.focus()
			end
		end

		vim.keymap.set("n", "<leader>e", nvimTreeFocusOrToggle, { desc = "Toggle File Explorer" })
		-- vim.keymap.set("n", "<leader>m", "<Cmd>NvimTreeFocus<CR>", { desc = "Focus on File Explorer" })
		-- vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
	end,
}
