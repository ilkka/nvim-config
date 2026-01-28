-- keymap
vim.keymap.set(
    'n',
    '<leader>ff',
    function() require('fff').find_files() end,
    { desc = 'FFFind files' }
)

