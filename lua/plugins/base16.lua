return {
  {
    "RRethy/base16-nvim",
    config = function()
      require('base16-colorscheme').setup({
        base00 = '#1d1d1d',
        base01 = '#2a2a2a',
        base02 = '#303030',
        base03 = '#606060',
        base04 = '#9a9996',
        base05 = '#c0bfbc',
        base06 = '#deddda',
        base07 = '#f6f5f4',
        base08 = '#ed333b',
        base09 = '#ff7800',
        base0A = '#ffa348',
        base0B = '#57e389',
        base0C = '#5bc8af',
        base0D = '#62a0ea',
        base0E = '#dc8add',
        base0F = '#f66151',
      })
      require('base16-colorscheme').with_config({
        telescope = true,
        indentblankline = true,
        notify = true,
        ts_rainbow = true,
        cmp = true,
        illuminate = true,
        dapui = true,
      })
    end
  }
}
