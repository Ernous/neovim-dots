return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").load_extension("file_browser")

    vim.keymap.set("n", "<C-S-e>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      { noremap = true, silent = true, desc = "File browser from current file" })
    vim.keymap.set("n", "<leader>fs", ":Telescope file_browser<CR>",
      { noremap = true, silent = true, desc = "File browser" })
  end,
}
