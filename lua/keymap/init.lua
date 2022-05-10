require('keymap.config')
require('keymap.telescope')

vim.api.nvim_exec(
[[source ~/.config/nvim/lua/keymap/coc.vim]],
false)
