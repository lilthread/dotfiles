return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "omnisharp",
          "pyright",
          "ts_ls",
          "rust_analyzer",
          "gopls",
          "lua_ls",
          "html",
          "cssls",
          "jsonls",
          "dockerls",
        },
      })
    end,
  },
}
