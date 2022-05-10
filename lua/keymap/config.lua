vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.o.errorbells = true
vim.o.visualbell = true
vim.o.hidden = true
vim.o.magic = true
vim.o.virtualedit = 'block'
vim.o.clipboard = 'unnamedplus'
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.smarttab = true
vim.o.shiftround = true
vim.o.timeout = true
vim.o.ttimeout = true
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.showmode = false
vim.o.scrolloff = 2
vim.o.sidescrolloff = 5
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.showcmd = true

-- yank 剪切板
vim.g.clipboard = {
	name = "macOS-clipboard",
	copy = { ["+"] = "pbcopy", ["*"] = "pbcopy" },
	paste = { ["+"] = "pbpaste", ["*"] = "pbpaste" },
	cache_enabled = 0,
}

vim.cmd('set shiftwidth=4')
vim.cmd('set textwidth=80')
vim.cmd('set noexpandtab')
vim.cmd('set autoindent')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=-1')
vim.cmd('set nowrap')
vim.cmd('set linebreak')
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set foldenable')
vim.cmd('set signcolumn=yes')

vim.g.mapleader = ' '
