vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", vim.cmd.Rex)
vim.keymap.set("n", ";", ":")

-- Enclose word in normal mode 
vim.keymap.set("n", "<leader>(", "viwdi()<C-[>hp")
vim.keymap.set("n", "<leader>[", "viwdi[]<C-[>hp")
vim.keymap.set("n", "<leader>{", "viwdi{}<C-[>hp")
vim.keymap.set("n", "<leader>\"", "viwdi\"\"<C-[>hp")
vim.keymap.set("n", "<leader>'", "viwdi''<C-[>hp")
vim.keymap.set("n", "<leader>`", "viwdi``<C-[>hp")
vim.keymap.set("n", "<leader><", "viwdi<><C-[>hp")
-- Enclose selection 
vim.keymap.set("v", "<leader>(", "di()<C-[>hp")
vim.keymap.set("v", "<leader>[", "di[]<C-[>hp")
vim.keymap.set("v", "<leader>{", "di{}<C-[>hp")
vim.keymap.set("v", "<leader>\"", "di\"\"<C-[>hp")
vim.keymap.set("v", "<leader>'", "di''<C-[>hp")
vim.keymap.set("v", "<leader>`", "di``<C-[>hp")
vim.keymap.set("v", "<leader><", "di<><C-[>hp")

-- Move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv")

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- Convenience hack to omit shift key for commands
vim.keymap.set("n", ";", ":")
vim.keymap.set("v", ";", ":")

-- Paste last yanked buffer
vim.keymap.set("n", ",p", "\"0p")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")

-- Add empty line in normal mode
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

-- Add empty HTML template in normal mode
vim.keymap.set("n", "<leader>html", "i<!Doctype HTML>\
<html lang=\"en\">\
<head>\
<title></title>\
</head>\
<body>\
</body>\
</html><Esc>4k3wa")

-- Add Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "buffers" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find_files" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help_tags" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "keymaps" })
vim.keymap.set("n", "<leader>f?", builtin.builtin, { desc = "builtin" })
