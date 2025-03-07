return {
  "hrsh7th/nvim-cmp",
  init = function()
    require("cmp").setup({
      sources = {
        {
          name = "nvim_lsp",
          option = {
            markdown_oxide = {
              keyword_pattern = [[\(\k\| \|\/\|#\)\+]],
            },
          },
        },
      },
    })
  end,
}
