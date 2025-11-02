-- Set tabstop to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth=4

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Show Line Numbers
vim.wo.number = true

local lspconfig = require "lspconfig"
lspconfig["clangd"].setup {}

-- Set default root markers for all clients
--vim.lsp.config('*', {
--  root_markers = { '.git' },
-- })

-- Set configuration for clangd language server
-- vim.lsp.config('c_ls', {
 -- cmd = { 'c-language-server', '--stdio' },
 -- filetypes = { 'c' },
--})


-- Enable plugin manager
-- require('lazy').setup('plugins')
-- require("config.lazy")
