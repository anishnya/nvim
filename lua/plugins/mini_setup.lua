vim.pack.add({
    {
        src = "https://github.com/nvim-mini/mini.ai",
    },
    {
        src = "https://github.com/nvim-mini/mini.pairs",
    },
    {
        src = "https://github.com/nvim-mini/mini.cursorword",
    },
    {
        src = "https://github.com/nvim-mini/mini.comment",
    },
    {
        src = "https://github.com/nvim-mini/mini.surround",
    },
}, {
    load = true,
})

require("mini.ai").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.cursorword").setup()
require("mini.comment").setup()
