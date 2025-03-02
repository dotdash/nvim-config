return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  config = function()
    require('tabnine').setup({
      disable_auto_comment=true,
      accept_keymap="<C-CR>",
      dismiss_keymap = "<C-Esc>",
      debounce_ms = 800,
      suggestion_color = {gui = "#808080", cterm = 244},
      exclude_filetypes = {"TelescopePrompt", "NvimTree"},
      ignore_certificate_errors = false,
    })
  end
}
