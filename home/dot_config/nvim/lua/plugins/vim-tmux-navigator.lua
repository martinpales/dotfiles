-- https://github.com/christoomey/vim-tmux-navigator

return {
	"christoomey/vim-tmux-navigator",
	config = function()
		-- Split navigation
		vim.keymap.set("n", "<C-Left>", ":<C-U>TmuxNavigateLeft<CR>", { silent = true })
		vim.keymap.set("n", "<C-Right>", ":<C-U>TmuxNavigateRight<CR>", { silent = true })
		vim.keymap.set("n", "<C-Up>", ":<C-U>TmuxNavigateUp<CR>", { silent = true })
		vim.keymap.set("n", "<C-Down>", ":<C-U>TmuxNavigateDown<CR>", { silent = true })
	end,
}
