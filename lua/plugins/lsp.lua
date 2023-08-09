return {
  "neovim/nvim-lspconfig",
  init = function()
    local lspconfig = require("lspconfig")
    lspconfig.util.on_attach = lspconfig.util.add_hook_before(lspconfig.util.on_attach, function(client)
      if lspconfig.util.root_pattern("deno.json", "deno.jsonc")(vim.fn.getcwd()) then
        if client.name == "tsserver" then
          client.stop()
          return
        end
      end
    end)
  end,
}
