return {
  { 
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          globalstatus = true,
          icons_enabled = true,
          always_divide_middle = true,
          theme = 'base16',
          component_separators = { left = '', right = '', },
          section_separators = {left = '', right = '', },
        },
        sections = {
          lualine_a = {
            {
              "mode",
              separator = { left = "", right = "" },
              padding = 1,
            },
          },
          lualine_b = {
            {
              "diagnostics",
              separator = { right = "" },
              color = { bg = "#404040" },
              padding = 1.2,
              sections = {
                "error",
                "warn",
                "hint",
              },
            },
          },
          lualine_c = {
            'buffers',
            'diff'
          },
          lualine_x = {
            'encoding',
            'progress'
          },
          lualine_y = {
            {
              'fileformat',
              separator = { left = "", right = "" },
              padding = 1.2,
            },
            {
              'hostname',
              padding = {
                left = 0.1,
                right = 1.8,
              },
            },
            {
              'lsp_status',
              padding = 2,
            },
          },
          lualine_z = {''},
          },
      })
    end
  }
}
