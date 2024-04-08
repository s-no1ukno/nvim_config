return {
  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
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
}
