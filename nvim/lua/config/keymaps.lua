local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear search highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Delete single character without copying into register
keymap.set("n", "x", '"_x', opts)

-- Increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", opts) -- close current split window

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Better paste
keymap.set("v", "p", '"_dP', opts)

-- Save file
keymap.set("n", "<C-s>", ":w<CR>", opts)
keymap.set("i", "<C-s>", "<ESC>:w<CR>a", opts)

-- Quit
keymap.set("n", "<leader>q", ":q<CR>", opts)
keymap.set("n", "<leader>Q", ":qa!<CR>", opts)