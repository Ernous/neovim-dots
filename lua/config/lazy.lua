vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("lazy").setup({
  spec = {
     { import = "plugins" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
})

