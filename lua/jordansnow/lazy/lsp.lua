return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "rust_analyzer", "tsserver" },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            settings = {
              Lua = {
                diagnostics = { globals = { 'vim' }},
              },
            },
          })
        end
      },
    })
  end
}
