vim.pack.add({
    {
        src = "https://github.com/rafamadriz/friendly-snippets",
        name = "friendly-snippets",
    },
    {
        src = "https://github.com/Saghen/blink.cmp",
        name = "blink",
    },
})

require("blink.cmp").setup()
