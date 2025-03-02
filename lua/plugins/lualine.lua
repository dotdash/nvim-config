return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'solarized_light',
      },
      sections = {
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype', 'tabnine'},
      },
    }
  end,
}
