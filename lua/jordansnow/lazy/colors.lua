function ColorMyPencils(color)
  -- color = color or "rose-pine"
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup({
        style = 'storm',
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          sidebars = 'dark',
          floats = 'dark',
        },
      })
    end
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        disable_background = true
      })
      vim.cmd('colorscheme rose-pine')

      ColorMyPencils()
    end
  }
}

