return {
  "folke/trouble.nvim",
  opts = {},
  config = function()
    require("trouble").setup {}
    vim.keymap.set('n', '<leader>tt', '<cmd>Trouble diagnostics toggle<cr>')
    vim.keymap.set('n', '<leader>ts', '<cmd>Trouble symbols toggle focus=false<cr>')
    vim.keymap.set('n', '<leader>tl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>')
  end
}
