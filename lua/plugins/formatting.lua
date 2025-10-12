return {
    -- stylua formatter
    {
        "ckipp01/stylua-nvim",
        build = "cargo install stylua",
        config = function()
            require("stylua-nvim").setup({
                config_file = "stylua.toml", -- this will use your stylua.toml file
            })
        end,
    },

    -- Optional: null-ls for better integration
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua.with({
                        extra_args = { "--config-path", vim.fn.expand("~/.config/nvim/stylua.toml") },
                    }),
                },
            })
        end,
    },
}
