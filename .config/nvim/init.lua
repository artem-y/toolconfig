require("currentuser.remap")
require("currentuser.set")

-- Set the classic colorscheme
vim.cmd("colorscheme vim")

-- Use telescope
require('telescope').setup({
    defaults = {}
})
