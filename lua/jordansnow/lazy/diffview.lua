return {
  "sindrets/diffview.nvim",
  config = function()
    vim.keymap.set("n", "<leader>dv", function()
      vim.cmd.DiffviewOpen()
    end)
    vim.keymap.set("n", "<leader>dc", function()
      vim.cmd.DiffviewClose()
    end)
    vim.keymap.set("n", "<leader>df", function()
      vim.cmd.DiffviewToggleFiles()
    end)
  end
}
