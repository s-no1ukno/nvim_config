return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "plenary", "telescope" },
  config = function()
    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end
    local harpoon = require("harpoon")
    harpoon:setup({
      settings = {
        save_on_toggle = true,
        -- sync_on_ui_close = true,
      }
    })

    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end)

    vim.keymap.set("n", "<leader>j", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>k", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>l", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>;", function() harpoon:list():select(4) end)
  end
}
