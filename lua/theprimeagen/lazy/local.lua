local local_plugins = {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<C-f>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<C-g>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<C-h>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<C-t>", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><C-f>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><C-g>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(4) end)
        end
    }
}

return local_plugins
