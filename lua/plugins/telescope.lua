return {
  {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local picker_config = { }
      for b, _ in pairs(builtin) do
        picker_config[b] = { fname_width = 120 }
      end
      require("telescope").setup({
        pickers = picker_config,
      })

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      vim.keymap.set("n", "<leader>fs", builtin.lsp_dynamic_workspace_symbols, { desc = "Telescope LSP symbols" })
      vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, { desc = "Telescope LSP implementations" })
      vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope LSP references" })
      vim.keymap.set("n", "<leader>ft", builtin.lsp_type_definitions, { desc = "Telescope LSP type definitions" })
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope LSP diagnostics" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
