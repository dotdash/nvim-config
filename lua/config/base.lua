vim.o.hidden = false
vim.o.backup = false
vim.o.writebackup = true
vim.o.backupcopy = "yes"
vim.o.hlsearch = false
vim.o.incsearch = false
vim.o.laststatus=2
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.listchars = "tab:>-,trail:-,precedes:<,extends:>"
vim.o.wrap = false
vim.o.sw = 2
vim.o.expandtab = true
vim.o.ruler = true
vim.o.smarttab = true
vim.o.backspace = "indent,eol,start"
vim.o.mouse = "a"
vim.o.wmnu = true
vim.o.wim = "full"
vim.o.completeopt = "menu,popup"
vim.o.switchbuf = "uselast"
vim.cmd "set suffixes+=.lock"
vim.o.foldenable = false
vim.o.autoread = true
vim.o.signcolumn = "yes"

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or "rounded"
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
