local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- Set leader key to space
vim.g.mapleader = " "

-- Insert mode mappings
map("i", "pp", "<Esc>", opts) -- Exit insert mode
map("i", "<C-p>", "<Esc>:w<CR>", opts) -- Save and exit insert mode
map("i", "<C-backspace>", "<C-W>", opts) -- Ctrl + backspace (delete word)

-- Normal mode mappings
map("n", "<Esc>", ":nohlsearch<CR>", opts) -- Clear search highlights
map("n", "<Esc>", ":q<CR>", opts) -- Exit current window
map("n", "<Leader>qq", ":q!<CR>", opts) -- Force exit (discard changes)
map("n", "<Leader>qw", ":x<CR>", opts) -- Save and exit
map("n", "<C-i>", ":NvimTreeToggle<CR>", opts) -- Toggle NvimTree
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts) -- Refresh NvimTree
map("n", "9", "<C-$>", opts) -- Go to the end of the line
map("n", "dw", 'vb"_d', opts) -- Delete a word backwards
map("n", "<Leader>oo", "<Esc>ggVG<CR>", opts) -- Select all text
map("n", "<Leader>pp", ":w<CR>", opts) -- Save current file
map("n", "<C-w>", "<C-w>w", opts) -- Move to the next split window
map("n", "<C-x>", "<C-w>x", opts) -- Switch between split windows
map("n", "<C-h>", "<C-w>h", opts) -- Move to the left split
map("n", "<C-j>", "<C-w>j", opts) -- Move to the bottom split
map("n", "<C-k>", "<C-w>k", opts) -- Move to the top split
map("n", "<C-l>", "<C-w>l", opts) -- Move to the right split
map("n", "<Up>", ":resize -1<CR>", opts) -- Decrease window height
map("n", "<Down>", ":resize +1<CR>", opts) -- Increase window height
map("n", "<Left>", ":vertical resize -1<CR>", opts) -- Decrease window width
map("n", "<Right>", ":vertical resize +1<CR>", opts) -- Increase window width

-- Window management mappings
map("n", "<leader>sv", "<C-w>v", opts) -- Split window vertically
map("n", "<leader>sh", "<C-w>s", opts) -- Split window horizontally
map("n", "<leader>se", "<C-w>=", opts) -- Equalize split window sizes
map("n", "<leader>sx", "<cmd>close<CR>", opts) -- Close current split window

-- Buffer management mappings
map("n", "<Leader>bd", ":bd<CR>", opts) -- Delete current buffer
map("n", "<Leader>bn", ":bn<CR>", opts) -- Go to next buffer
map("n", "<Leader>bp", ":bp<CR>", opts) -- Go to previous buffer

-- Tab management mappings
map("n", "<leader>to", "<cmd>tabnew<CR>", opts) -- Open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", opts) -- Close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", opts) -- Go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", opts) -- Go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", opts) -- Move current buffer to new tab

-- General mappings
map("n", "<leader>nh", ":nohl<CR>", opts) -- Clear search highlights
map("n", "x", '"_x', opts) -- Delete single character without copying into register
map("n", "+", "<C-a>", opts) -- Increment number under cursor
map("n", "-", "<C-x>", opts) -- Decrement number under cursor