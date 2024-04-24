return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

    vim.keymap.set("n", "<leader>st", ":TodoTelescope<CR>",
      { desc = "Fuzzy search of todo comments" }),

    vim.keymap.set("n", "<leader>tq", ":TodoQuickFix<CR>",
      { desc = "Adds all todo items to quickfix list" })
  }
}
