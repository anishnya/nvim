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

-- Telescope
local builtin = require("telescope.builtin")

keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })
keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string (grep)" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find in buffers" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help tags" })

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
