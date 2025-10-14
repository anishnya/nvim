-- LSP Setup
local languages = require("utils.installed_langs")
local lsp_servers = {}
for _, lang in ipairs(languages) do
    table.insert(lsp_servers, lang.lsp)
end

vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = lsp_servers,
})

vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },
})

vim.lsp.enable(lsp_servers)
