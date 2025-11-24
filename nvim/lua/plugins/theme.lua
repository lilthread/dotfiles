return {
  {
    {
      "rebelot/kanagawa.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        require("kanagawa").setup({
          typeStyle = {},
          transparent = true,         -- do not set background color
          dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
          colors = {
            palette = {
              -- change all usages of these colors
              sumiInk0 = "#000000",
              fujiWhite = "#FFFFFF",
            },
            theme = {
              -- change specific usages for a certain theme, or for all of them
              wave = {
                ui = {
                  float = {
                    bg = "none",
                  },
                },
              },
              dragon = {
                syn = {
                  parameter = "yellow",
                },
              },
              all = {
                ui = {
                  bg_gutter = "none"
                }
              }
            }
          },
        })
        vim.cmd("colorscheme kanagawa-dragon")
      end,
    },
  }
}

