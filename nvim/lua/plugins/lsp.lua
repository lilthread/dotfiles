return {
  {
    "neovim/nvim-lspconfig",
    build = ":TSUpdate",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
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
        highlight = { enable = true },
        indent = { enable = false },
      })
    end,
  },
}
