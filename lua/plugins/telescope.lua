return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = "➤ ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            mirror = false,
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
            prompt_position = "top",
            preview_width = 0.6,
          },
          vertical = {
            mirror = false,
            width = 0.87,
            height = 0.80,
            preview_cutoff = 40,
            prompt_position = "top",
          },
          center = {
            width = 0.87,
            height = 0.80,
            preview_cutoff = 40,
          },
          flex = {
            flip_columns = 150,
          },
        },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" },
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = { "node_modules" },
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = { "truncate" },
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
          hidden = false,
        },
        live_grep = {
          theme = "ivy",
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
          initial_mode = "normal",
        },
        git_files = {
          theme = "dropdown",
          previewer = false,
        },
        colorscheme = {
          enable_preview = true,
        },
        lsp_references = {
          theme = "ivy",
          initial_mode = "normal",
        },
        lsp_definitions = {
          theme = "ivy",
          initial_mode = "normal",
        },
        lsp_document_symbols = {
          theme = "ivy",
          initial_mode = "normal",
        },
      },
    })
    local builtin = require('telescope.builtin')

    vim.keymap.set("n", '<C-p>', builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", '<C-S-p>', builtin.commands, { desc = "Command palette" })
    vim.keymap.set("n", '<C-S-f>', builtin.live_grep, { desc = "Search in files" })
    vim.keymap.set("n", '<C-S-o>', builtin.buffers, { desc = "Open buffers" })
    vim.keymap.set("n", '<leader>ff', builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", '<leader>fg', builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", '<leader>fb', builtin.buffers, { desc = "Buffers" })
    vim.keymap.set("n", '<leader>fh', builtin.help_tags, { desc = "Help tags" })
    vim.keymap.set("n", '<leader>fr', builtin.oldfiles, { desc = "Recent files" })
    vim.keymap.set("n", '<leader>fc', builtin.colorscheme, { desc = "Color schemes" })
    vim.keymap.set('n', '<leader><Tab>', builtin.buffers, { desc = 'Switch buffer' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find in files' })
    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Search in buffer' })
    vim.keymap.set('n', '<leader><Tab>', function() require('telescope.builtin').buffers({ attach_mappings = function(prompt_bufnr, map) local actions=require('telescope.actions'); local action_state=require('telescope.actions.state'); map('i','<CR>',function() actions.close(prompt_bufnr); vim.api.nvim_set_current_buf(action_state.get_selected_entry().bufnr) end); map('n','<CR>',function() actions.close(prompt_bufnr); vim.api.nvim_set_current_buf(action_state.get_selected_entry().bufnr) end); return true end }) end, { desc = 'Switch buffer' })
  end,
}
