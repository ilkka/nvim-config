-- 
-- keymap
--

--
-- neovim QoL
--

-- move lines up or down
vim.keymap.set("v", "J", ":move '>+1<cr>gv=gv", { desc = "Move selected line(s) down", silent = true })
vim.keymap.set("v", "K", ":move '>-2<cr>gv=gv", { desc = "Move selected line(s) up", silent = true })
-- keep selection on indents
vim.keymap.set("v", "<", "<gv", { desc = "Outdent selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent selection" })
-- toggle scrolloff
vim.keymap.set({"n"}, "zS", function()
    local enable = vim.opt_local.scrolloff:get() == 0
    vim.opt_local.scrolloff = enable and 8 or 0
end, { desc = "Toggle scrolloff" })
-- exit terminal mode on esc
vim.keymap.set({"t"}, "<esc>", "<c-\\><c-n>", { desc = "Exit terminal mode" })
-- move with alt keys
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l")
vim.keymap.set("i", "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("i", "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("i", "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("i", "<A-l>", "<C-\\><C-N><C-w>l")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- flash
vim.keymap.set({ "n", "x", "o" }, 's', function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, '<c-s>', function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
vim.keymap.set("o", 'r', function() require("flash").remote() end, { desc = "Remote Flash" })
vim.keymap.set({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set({ "c" }, "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })

-- Telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, { desc = 'Telescope help tags' })
