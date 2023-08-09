return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      local compiler
      if vim.fn.has("win32") == 1 then
        compiler = "zig"
      else
        compiler = "gcc"
      end
      require("nvim-treesitter.install").compilers = { compiler }
      require("nvim-treesitter.configs").setup(opts)
    end,
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "go",
        "elixir",
        "rust",
        "dockerfile",
      })
    end,
  },
}
