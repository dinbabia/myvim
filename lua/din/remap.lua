vim.g.mapleader = " "
-- Open Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- delete single character without copying into register
-- we don't need to copy the word after deleting it
vim.keymap.set("n", "x", '"_x')

-- Search and replace a word
-- %s -> Search All in file
-- g -> global
-- gi -> global ignore case
-- gc -> prompts before each replacement
-- :1,10s/ -> search from row 1-10
vim.keymap.set("n", "<leader><leader>RS", '"hy:%s/')
-- Replace ALL THE TEXT that the CURSOR is placed.
vim.keymap.set("n", "<leader><leader>RA", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Go to start and end line
vim.keymap.set("n", "-", "^")
vim.keymap.set("n", "=", "<End>")

-- Navigation during insert mode
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-i>", "<Up>")
vim.keymap.set("i", "<C-k>", "<Down>")
vim.keymap.set("i", "<C-j>", "<Left>")
vim.keymap.set("i", "<C-b>", "<S-Left>")
vim.keymap.set("i", "<C-w>", "<S-Right>")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

-- Clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Move the highlighted up and down, and even inside a block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Place the text in the line below at the end of the current line
vim.keymap.set("n", "J", "mzJ`z")

-- Stay Cursor in the middle when going up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- try to search something using '/<text>'
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")


-- Not sure. Paste2 something
vim.keymap.set("x", "<leader>p", [["_dP]])


-- Copy the current line or highlighted text
-- like COPY and PASTE
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Delete
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- I don't know this below
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make the current file to be executable 'chmod +x'
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

