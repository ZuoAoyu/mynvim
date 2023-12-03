require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      },
      check_outdated_packages_on_open = true,
  },
  github = {
      download_url_template = "https://ghproxy.net/https://github.com/%s/releases/download/%s/%s"
  },
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls", "clangd",
  },
})

require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
})
