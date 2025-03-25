return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      {
        "folke/neoconf.nvim",
        config = function()
          require("neoconf").setup({
          })
        end,
      }
    }
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "intelephense" },
    })
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")
    lspconfig.intelephense.setup {
      capabilities = capabilities,
    }

    lspconfig.rust_analyzer.setup{
      capabilities = capabilities,
    }

    vim.keymap.set("n", "grn", function()
      vim.lsp.buf.rename()
    end, { desc = "vim.lsp.buf.rename()" })

    vim.keymap.set({ "n", "x" }, "gra", function()
      vim.lsp.buf.code_action()
    end, { desc = "vim.lsp.buf.code_action()" })

    vim.keymap.set("n", "grr", function()
      vim.lsp.buf.references()
    end, { desc = "vim.lsp.buf.references()" })

    vim.keymap.set("n", "gri", function()
      vim.lsp.buf.implementation()
    end, { desc = "vim.lsp.buf.implementation()" })

    vim.keymap.set("i", "<C-S>", function()
      vim.lsp.buf.signature_help()
    end, { desc = "vim.lsp.buf.signature_help()" })
  end
}
