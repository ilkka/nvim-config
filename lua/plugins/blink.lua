return {
  "saghen/blink.cmp",
  dependencies = { "allaman/emoji.nvim", "saghen/blink.compat" },
  opts = {
    sources = {
      default = { "emoji" },
      providers = {
        emoji = {
          name = "emoji",
          module = "blink.compat.source",
          transform_items = function(ctx, items)
            local kind = require("blink.cmp.types").CompletionItemKind.Text
            for i = 1, #items do
              items[i].kind = kind
            end
            return items
          end,
        },
      },
    },
  },
}
