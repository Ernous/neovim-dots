-- Нумерация строки
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

vim.opt.list = true
vim.opt.listchars = {
  tab = '→ ',
  trail = '·',
  nbsp = '␣',
  extends = '❯',
  precedes = '❮'
}
vim.opt.fillchars = { eob = " " }

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.wrapscan = true
vim.opt.inccommand = "split"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.barbar_auto_setup = false

