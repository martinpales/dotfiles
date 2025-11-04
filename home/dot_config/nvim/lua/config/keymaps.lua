-- Normal mode mappings
-- vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "<leader>v", "<C-q>", { desc = "Visual block" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write file" })
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z")

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Map Ctrl-A/Ctrl-E as Home/End
-- vim.keymap.set("n", "<C-a>", "^")
-- vim.keymap.set("n", "<C-e>", "$")
-- vim.keymap.set("i", "<C-a>", "<C-o>0")
-- vim.keymap.set("i", "<C-e>", "<C-o>$")

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<ESC>:m .-2<CR>==gi")

-- Better indenting in visual mode
-- vim.keymap.set("v", "<Tab>", ">gv")
-- vim.keymap.set("v", "<S-Tab>", "<gv")
-- vim.keymap.set("v", "<A-l>", ">gv")
-- vim.keymap.set("v", "<A-h>", "<gv")

-- Buffer navigation
vim.keymap.set("n", "<leader> ", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>q", ":bp <BAR> bd #<CR>", { desc = "CLose buffer" })

-- Split resizing
vim.keymap.set("n", "<leader><Up>", "<Cmd>resize +2<CR>", { silent = true, desc = "Increase window height" })
vim.keymap.set("n", "<leader><Down>", "<Cmd>resize -2<CR>", { silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<leader><Left>", "<Cmd>vertical resize -5<CR>", { silent = true, desc = "Decrease window width" })
vim.keymap.set("n", "<leader><Right>", "<Cmd>vertical resize +5<CR>", { silent = true, desc = "Increase window width" })

vim.keymap.set("n", "<leader>m", ":only", { silent = true, desc = "Maximize window" })
