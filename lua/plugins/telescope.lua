-- telescope
vim.pack.add({
    {
        src = "https://github.com/nvim-lua/plenary.nvim",
        name = "plenary",
    },
    {
        src = "https://github.com/nvim-telescope/telescope.nvim",
        name = "telescope",
    },
})

local telescope = require("telescope")
telescope.setup()
