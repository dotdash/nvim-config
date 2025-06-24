local jj = {}

jj.conflicts = function ()
  local lines = vim.fn.systemlist("jj resolve --list")

  vim.fn.setqflist({}, " ", {
    lines = lines,
    efm = "%f\\ %m",
  })
  vim.cmd("copen")
  vim.cmd("cc")
end

jj.cdiff = function()
  vim.api.nvim_feedkeys('?<<<<<<\n]nddV]nkd:new +set\\ buftype=nofile\n:difft\nVppddV]nkdp:vnew +set\\ buftype=nofile\n:difft\nVpk[n[n', 'm', false)
end

vim.keymap.set('n', '<leader>cl', jj.conflicts)
vim.keymap.set('n', '<leader>cd', jj.cdiff)

return jj
