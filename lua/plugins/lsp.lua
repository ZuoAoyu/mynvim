require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls", "clangd", "pylsp"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup{}
  end,
  ["clangd"] = function ()
    require("lspconfig").clangd.setup {}
  end
})
