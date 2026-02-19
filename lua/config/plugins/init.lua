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
    -- Surround things
    "https://github.com/kylechui/nvim-surround",
    -- Jump to things quickly
    "https://github.com/folke/flash.nvim",
    -- Scala
    "https://github.com/scalameta/nvim-metals",
    -- Icons (optional dependency of telescope)
    "https://github.com/nvim-tree/nvim-web-devicons",
    -- fzy native sorter (optional dependency of telescope)
    "https://github.com/nvim-telescope/telescope-fzy-native.nvim",
    -- lua function library required for telescope
    "https://github.com/nvim-lua/plenary.nvim",
    -- telescope for finding things
    "https://github.com/nvim-telescope/telescope.nvim",
    -- formatting
    "https://github.com/stevearc/conform.nvim",
    -- compiling with asynchronicity etc etc
    "https://github.com/tpope/vim-dispatch",
    -- which key does what?
    "https://github.com/folke/which-key.nvim",
    -- completion
    "https://github.com/saghen/blink.cmp",
    -- optional snippets dependency for blink
    "https://github.com/rafamadriz/friendly-snippets",
    -- multicursor funtimes
    "https://github.com/jake-stewart/multicursor.nvim",
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
require("config.plugins.surround")
require("config.plugins.flash")
require("config.plugins.metals")
require("config.plugins.nvim-web-devicons")
require("config.plugins.telescope")
require("config.plugins.conform")
require("config.plugins.which-key")
require("config.plugins.blink")
require("config.plugins.multicursor")
