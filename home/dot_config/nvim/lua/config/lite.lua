require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.terminal")

-- Better window navigation
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move to bottom window" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Visuals
vim.cmd("colorscheme default")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- StatusLine from the retrobox colorscheme
vim.cmd(
	[[hi StatusLine guifg=#504945 guibg=#ebdbb2 guisp=NONE gui=bold,reverse ctermfg=239 ctermbg=187 cterm=bold,reverse term=bold,reverse]]
)
vim.cmd(
	[[hi StatusLineNC guifg=#3c3836 guibg=#a89984 guisp=NONE gui=reverse ctermfg=237 ctermbg=102 cterm=reverse term=bold,underline]]
)
