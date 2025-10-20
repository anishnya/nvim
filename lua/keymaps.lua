local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- NvimTree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Move between windows using Ctrl + hjkl
keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Move to left window", noremap = true })
keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Move to lower window", noremap = true })
keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Move to upper window", noremap = true })
keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Move to right window", noremap = true })
keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Close window", noremap = true })

-- fzf-lua
local fzf = require("fzf-lua")
local aerial = require("aerial")
keymap.set("n", "<leader>ff", function()
    fzf.files()
end, { desc = "Find files", noremap = true })
keymap.set("n", "<leader>fs", function()
    fzf.live_grep_native()
end, { desc = "Find string (grep)", noremap = true })
keymap.set("n", "<leader>fc", function()
    fzf.lgrep_curbuf()
end, { desc = "Find in Current Buffer", noremap = true })
keymap.set("n", "<leader>fb", function()
    fzf.buffers()
end, { desc = "Find buffers", noremap = true })
keymap.set("n", "<leader>fr", function()
    fzf.registers()
end, { desc = "Find in registers", noremap = true })
keymap.set("n", "<leader>fm", function()
    fzf.marks()
end, { desc = "Find marks", noremap = true })

keymap.set("n", "<leader>fm", function()
    aerial.fzf_picker()
end, { desc = "Find Symbols" })
keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })
-- LSP Keymaps
keymap.set("n", "<leader>lr", function()
    fzf.lsp_references()
end, { desc = "LSP References", noremap = true })
keymap.set("n", "<leader>ld", function()
    fzf.lsp_definitions()
end, { desc = "LSP Defintions", noremap = true })
keymap.set("n", "<leader>lc", function()
    fzf.lsp_declarations()
end, { desc = "LSP Declarations", noremap = true })
keymap.set("n", "<leader>li", function()
    fzf.lsp_implementations()
end, { desc = "LSP Implementations", noremap = true })
keymap.set("n", "<leader>ln", function()
    fzf.lsp_incoming_calls()
end, { desc = "LSP Incoming Calls", noremap = true })
keymap.set("n", "<leader>lo", function()
    fzf.lsp_outgoing_calls()
end, { desc = "LSP Outgoing Calls", noremap = true })

-- Buffers
-- Cycle through buffers
keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Buffer management menu under <leader>b
keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffer" })
keymap.set("n", "<leader>bc", "<cmd>bdelete<cr>", { desc = "Close Current Buffer" })
keymap.set("n", "<leader>bO", "<cmd>%bd|e#|bd#<cr>", { desc = "Close All Other Buffers (Focus)" })

-- You can also add a mapping to the first and last buffer
keymap.set("n", "<leader>b1", "<cmd>buffer 1<cr>", { desc = "Go to Buffer 1" })
keymap.set("n", "<leader>bl", "<cmd>buffer #<cr>", { desc = "Go to Last Buffer" })

keymap.set("n", "<leader>nn", "<cmd>enew<cr>", { desc = "New Empty Buffer" })
keymap.set("n", "<leader>nh", "<cmd>new<cr>", { desc = "New Horizontal Split" })
keymap.set("n", "<leader>nv", "<cmd>vnew<cr>", { desc = "New Vertical Split" })
keymap.set("n", "<leader>nt", "<cmd>tabnew<cr>", { desc = "New Tab" })

-- Oil Keymap
keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open Oil" })

-- Aerial Kep Map
keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

keymap.set("n", "<leader>rp", function()
    require("render-markdown").preview()
end, { desc = "Render Markdown Preview", noremap = true })
