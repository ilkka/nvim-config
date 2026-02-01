require("conform").setup({
    formatters_by_ft = {
        bash = { "shellcheck" },
        beancount = { "bean-format" },
        c = { "clang-format" },
        cmake = { "cmake_format" },
        cpp = { "clang-format" },
        dockerfile = { "dockerfmt "},
        elixir = { "mix" },
        gleam = { "gleam" },
        kotlin = { "ktlint" },
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        scala = { "scalafmt" },
        sh = { "shellcheck" },
        zig = { "zigfmt" },
        zsh = { "shellcheck" },
        yaml = { "yamlfmt" },
    },
})

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
