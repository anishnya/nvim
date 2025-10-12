-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Formatting keymaps
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format code" })

vim.keymap.set("n", "<leader>F", function()
    vim.cmd(":Stylua")
end, { desc = "Format with Stylua" })
