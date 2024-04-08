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
}
