return {
  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },

  -- self-closing brackets
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end
  },

  -- line and block comments
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },

  -- enabling devicons
  {
    "nvim-tree/nvim-web-devicons",
  },

  {
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
  },
}
