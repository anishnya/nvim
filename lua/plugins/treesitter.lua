-- Treesitter Setup
local languages = require("utils.installed_langs")
local languages_list = {}
for _, lang in ipairs(languages) do
    table.insert(languages_list, lang.language)
end

vim.pack.add({
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        name = "treesitter",
    },
})

-- treesitter
require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = languages_list,
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
    },
})
