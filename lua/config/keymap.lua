-- 
-- general keymap (plugin keys live in plugin files)
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

