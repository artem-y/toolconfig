require("currentuser.remap")
require("currentuser.set")

-- Set the classic colorscheme
vim.cmd("colorscheme vim")

-- Use telescope
require('telescope').setup({
    defaults = {}
})

-- Add filetype-specific overrides for Go
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "gomod", "gowork" },
  callback = function()
    vim.opt_local.expandtab = false
  end,
})
