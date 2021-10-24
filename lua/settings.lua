vim.opt.number = true
vim.opt.cursorline = true
vim.opt.hidden = true

-- Split window below/right when creating horizontal/vertical windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- General tab settings
vim.opt.tabstop = 2      -- number of visual spaces per TAB
vim.opt.softtabstop = 2  -- number of spaces in tab when editing
vim.opt.shiftwidth = 2   -- number of spaces to use for autoindent
vim.opt.expandtab = true -- expand tab to spaces so that tabs are spaces

vim.g.strip_whitespace_on_save = 1
vim.g.strip_whitespace_confirm = 0

vim.opt.clipboard:append('unnamedplus')

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

vim.g.startify_lists = {
  { type = 'dir', header = {'Recently opened files'} },
}
vim.g.startify_change_to_dir = false
