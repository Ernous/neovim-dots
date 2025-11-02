return {
  {
    "romgrk/barbar.nvim",
    config = function()
      require('barbar').setup({
        animation = true,
        auto_hide = true,
        tabpages = true,
        clickable = true,
        focus_on_close = 'left',
        highlight_alternate = false,
        highlight_inactive_file_icons = false,
        highlight_visible = true,
      })
    end
  }
}
