require("currentuser.remap")
require("currentuser.set")

-- Set the classic colorscheme
vim.cmd("colorscheme vim")

-- Use telescope
require('telescope').setup({
  defaults = {}
})

-- Add filetype-specific overrides

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "gomod", "gowork" },
  callback = function()
    vim.opt_local.expandtab = false
  end,
})

vim.api.nvim_create_autocms("FileType", {
  pattern = { "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
})
})
