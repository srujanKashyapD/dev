return {
  {
    "olimorris/codecompanion.nvim",
    config = function()
      vim.keymap.set("n", "<leader>ci", function()
        require("codecompanion").setup({
          adapters = {
            deepseek7b = function()
              return require("codecompanion.adapters").extend("ollama", {
                name = "deepseek-r1:7b", -- Give this adapter a different name to differentiate it from the default ollama adapter
                schema = {
                  model = {
                    default = "deepseek-r1:7b",
                  },
                  num_ctx = {
                    default = 16384,
                  },
                  num_predict = {
                    default = -1,
                  },
                },
              })
            end,
          },
        })
      end)
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
};
