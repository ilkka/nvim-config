-- 
-- keymap
--

-- neovim QoL

-- move lines up or down
vim.keymap.set("v", "J", ":move '>+1<cr>gv=gv", { desc = "Move selected line(s) down", silent = true })
vim.keymap.set("v", "K", ":move '>-2<cr>gv=gv", { desc = "Move selected line(s) up", silent = true })
-- keep selection on indents
vim.keymap.set("v", "<", "<gv", { desc = "Outdent selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent selection" })

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
