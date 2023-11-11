local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- set leader key to space
vim.g.mapleader = " "

map("i", "pp", "<Esc>", opts) -- Exit insert mode with jk
map("n", "<Esc>", ":nohlsearch<CR>", opts) -- Exit from open windows
map("n", "<Esc>", ":q<CR>", opts) -- Exit
map("n", "<Leader>qq", ":q!<CR>", opts) -- Force Exit (discard the operations made)
map("n", "<Leader>qw", ":x<CR>", opts) -- Save and Exit
map("n", "<C-i>", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)
map("i", "<C-p>", "<Esc>:w<CR>", opts) -- Exit and save
map("n", "9", "<C-$>", opts) -- Go to the end of the line
map("n", "dw", 'vb"_d', opts) -- Delete a word backwards
map("n", "<Leader>oo", "<Esc>ggVG<CR>", opts) -- Select all text
map("n", "<Leader>pp", ":w<CR>", opts) -- Save
map("i", "<C-backspace>", "<C-W>", opts) -- Ctrl + backspace

---------------------

-- General Keymaps --

map("n", "<leader>nh", ":nohl<CR>", opts) -- "Clear search highlights"

map("n", "x", '"_x', opts) -- delete single character without copying into register

-- increment/decrement numbers
map("n", "+", "<C-a>", opts) -- increment
map("n", "-", "<C-x>", opts) -- decrement

-- window management
-- map("n", "<C-a>", ":vsplit<CR>", opts) -- Vertical
map("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
map("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
map("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", opts) -- close current split window
map("n", "<C-w>", "<C-w>w", opts) -- The next page
map("n", "<C-x>", "<C-w>x", opts) -- Switch between them
map("n", "<C-h>", "<C-w>h", opts) -- Goes to the left page
map("n", "<C-j>", "<C-w>j", opts) -- Goes to the bottom page
map("n", "<C-k>", "<C-w>k", opts) -- Goes to the top page
map("n", "<C-l>", "<C-w>l", opts) -- Goes to the right page
map("n", "<Up>", ":resize -1<CR>", opts)
map("n", "<Down>", ":resize +1<CR>", opts)
map("n", "<Left>", ":vertical resize -1<CR>", opts)
map("n", "<Right>", ":vertical resize +1<CR>", opts)

-- pages
map("n", "<Leader>bd", ":bd<CR>", opts) -- Delete page
map("n", "<Leader>bn", ":bn<CR>", opts) -- Pass to the next page
map("n", "<Leader>bp", ":bp<CR>", opts) -- Return to the next page

map("n", "<leader>to", "<cmd>tabnew<CR>", opts) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", opts) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", opts) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", opts) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", opts) --  move current buffer to new tab