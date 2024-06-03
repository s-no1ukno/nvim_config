return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "plenary", "telescope" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({ settings = { save_on_toggle = true, } })

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<leader>J", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>K", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>L", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>:", function() harpoon:list():select(4) end)
  end
}
