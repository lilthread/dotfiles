return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local config = {
      options = {
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {
          {'fileformat' , symbols = { unix = " " } },
          { "filetype" },
        },
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
    }
    return config
  end,
}
