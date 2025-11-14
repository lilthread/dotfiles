local username = os.getenv("USER") or os.getenv("USERNAME")

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
              cmd = "colorscript -e suckless",
              icon = " ",
              height = 5,
              enabled = true,
            },
          }
          return vim.tbl_map(function(cmd)
            return vim.tbl_extend("force", {
              pane = 2,
              section = "terminal",
              padding = 1,
              indent = 3,
            }, cmd)
          end, cmds)
        end,
        {
          pane = 2,
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          indent = 2,
          padding = 1,
        },
        {
          pane = 2,
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
