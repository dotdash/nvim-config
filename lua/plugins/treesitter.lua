return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      require'nvim-treesitter.configs'.setup({
        ensure_installed = {
          "just",
          "lua",
          "markdown",
          "php",
          "rust",
          "toml",
          "vim",
          "vimdoc",
        },
        highlight = {
          enable = true,
          disable = { "php", "rust" },
          additional_vim_regex_highlighting = false,
        },
      })
    end
  }
}
