local username = os.getenv("USER") or os.getenv("USERNAME") or ""

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        function()
          local cmds = {
            {
              title = "Welcome back " .. string.upper(string.sub(username, 1, 1)) .. string.sub(username, 2),
              cmd = "echo $(date)",
              icon = " ",
              height = 1,
              enabled = true,
            },
          }
        end,
        {
          pane = 1,
          icon = " ",
          title = "Projects",
          section = "projects",
          indent = 2,
          padding = 1,
        },
        { section = "startup" },
      },
      preset = {
        header = [[
⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⠿⣿⢿⣿⡟⠛⠷⡀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣀⣀⣀⣀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⡿⣿⣿⡛⠅⠁⠈⠈⠘⠳⠀⠀⢒⠀⠀⠀⡠⠊⠉⠉⣽⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀
⠀⢸⣿⣿⣿⣿⡀⠀⣰⢤⡀⠀⠀⠀⠀⠀⠀⠾⠀⠀⡜⠀⠀⠀⠀⠛⠻⣿⢿⣿⣿⣿⣿⣿⣿⡆
⠀⠈⣿⣿⣿⠟⠋⣿⢌⣿⡷⢄⠀⠀⠀⢀⣠⣾⠀⣸⣿⡏⢡⠀⠀⠀⠀⠀⠊⢛⣿⣿⣿⣿⣿⣿
⠀⠀⣿⣿⣿⣿⣾⣿⣿⢿⡄⠀⡀⠀⠀⠙⢿⡯⢀⡻⢿⡿⠛⠁⠀⠀⠀⠀⠀⣻⣹⣿⣿⣿⣿⣿
⠀⢀⣿⣷⡛⢿⣿⣿⣷⣿⡍⠀⠷⣦⢄⣀⣼⡇⢫⣰⠆⠀⠀⡀⠀⠀⠀⠀⣴⣓⣺⣿⣿⣿⣿⡟
⣀⣼⣧⡌⠳⣤⠿⣿⡿⣿⣶⣤⣴⣿⣿⣯⣿⣿⣿⣧⡀⠀⠸⡕⠀⠀⠀⠀⣿⠿⠁⠘⣿⣿⡟⠀
⣩⡵⢤⠟⢄⠘⢤⡘⢇⠘⣿⣿⣿⣿⣿⣿⣿⣿⣥⣎⠁⠀⠀⢒⣠⣦⣦⣴⡇⠀⠀⣬⣿⣿⠃⠀
⠸⣷⣟⠱⡀⠳⢤⡀⠀⠳⣽⣿⣿⣿⣿⣿⡿⠻⢿⣿⣇⢀⣀⣴⣿⣿⣿⣿⡇⠀⠀⣿⣿⣯⣲⠀
⢷⢌⣿⡆⣉⠀⠀⠀⠀⠀⣸⡏⠙⠛⠿⠿⠃⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢠⣿⡷⡳⠃⠀
⡙⢿⣿⣿⡿⣦⣤⠄⠀⢸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⢻⣿⣿⣿⣆⣤⣾⣯⠞⠁⠀⠀
⠈⢦⡹⣾⣿⣾⡟⠛⠀⠀⢺⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀
⣅⣨⡟⠻⣿⣿⣿⡆⠀⢤⡄⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣩⢟⠕⠀⠀⠀⠀⠀⠀⠀
]],
      },
    },
  },
}
