return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },

  opts = function()

    if os.getenv('TMUX') then
      vim.defer_fn(function() vim.o.laststatus=0 end, 0)
    end
    return {

      options = {
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {
          {'fileformat' , symbols = { unix = " " } },
        },
        lualine_z = {
          {'filename', 'fileformat' },
          {"filetype" },
        },
        --lualine_y = {'progress'},
        --lualine_z = {'location'},
      }
    }
  end
}
