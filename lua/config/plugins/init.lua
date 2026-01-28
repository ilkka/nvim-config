-- add plugins with vim.pack
vim.pack.add({
    -- A very nice set of themes
    "https://github.com/rebelot/kanagawa.nvim",
    -- A very nice file manager thingy
    "https://github.com/stevearc/oil.nvim",
    -- Grammars and things
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
    -- Showing code context with tree-sitter
    "https://github.com/nvim-treesitter/nvim-treesitter-context",
    -- Run jjui in a window
    "https://github.com/HotThoughts/jjui.nvim",
    -- Run jj commands with :J
    "https://github.com/NicolasGB/jj.nvim",
    -- LSP configs
    "https://github.com/neovim/nvim-lspconfig",
    -- Mason
    "https://github.com/mason-org/mason.nvim",
    -- Hopefully highlight for helm stuff
    "https://github.com/towolf/vim-helm",
})

-- Run setup for all the individual plugins
require("config.plugins.kanagawa")
require("config.plugins.oil")
require("config.plugins.treesitter")
require("config.plugins.treesitter-context")
require("config.plugins.jjui")
require("config.plugins.jj")
require("config.plugins.lspconfig")
require("config.plugins.mason")
require("config.plugins.languageservers")
