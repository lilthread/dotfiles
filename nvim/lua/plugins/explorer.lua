return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      layouts = {
        sidebar = {
          layout = {
            backdrop = true,
            width = 30,
            min_width = 30,
            position = "right",
            zindex = 100,
            --auto_hide = {"input"},
          },
        },
      },
      sources = {
        explorer = {
          layout = { preset = "sidebar" },
          auto_close = true,
        },
      },
    },
  },
}
