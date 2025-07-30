local set = vim.opt

set.shiftwidth=2
set.number = true
set.clipboard:append("unnamedplus")
vim.cmd("noremap <Up> <Nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.python3_host_prog = "/usr/bin/python3"
vim.o.winborder = 'rounded'
vim.o.laststatus = 3
