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

-- Launch Go LSP
require("lspconfig").gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
  on_attach = function(client, bfr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("GoFormat", { clear = true }),
        buffer = bfr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end
      })
    end
  end,
})
