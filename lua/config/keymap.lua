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

-- fff
vim.keymap.set(
    'n',
    '<leader>ff',
    function() require('fff').find_files() end,
    { desc = 'FFFind files' }
)

-- flash
vim.keymap.set({ "n", "x", "o" }, 's', function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, 'S', function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
vim.keymap.set("o", 'r', function() require("flash").remote() end, { desc = "Remote Flash" })
vim.keymap.set({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set({ "c" }, "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })

-- bufswi
vim.keymap.set({'n'}, '<leader><tab>', function() require("bufswi").open() end, { desc = "Bufswi" })
