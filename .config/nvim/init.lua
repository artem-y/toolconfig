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

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- Launch LSPs
local lspconfig = require("lspconfig")

local function is_installed(lsp)
  return vim.fn.executable(lsp) == 1
end

local function attach(client, bfr)
  if client.server_capabilities.documentFormattingProvider then
    local augroup_name = string.format("%s-Format", client.name)

    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup(augroup_name, { clear = true }),
      buffer = bfr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end
    })
  end
end

if is_installed("gopls") then
  lspconfig.gopls.setup({
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
        gofumpt = true,
      },
    },
    on_attach = attach,
  })
end

if is_installed("lua-language-server") then
  lspconfig.lua_ls.setup({
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = { enable = false },
      },
    },
    on_attach = attach,
  })
end
