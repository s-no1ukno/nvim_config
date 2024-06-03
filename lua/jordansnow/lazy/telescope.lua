return {
  "nvim-telescope/telescope.nvim",
  name = "telescope",
  dependencies = {
    "plenary"
  },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>cs', builtin.colorscheme)
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
    vim.keymap.set('n', '<leader>ss', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word });
    end)
    vim.keymap.set('n', '<leader>SS', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word });
    end)
  end
}
