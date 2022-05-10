vim.api.nvim_set_keymap(
'n',
'<leader>fw',
":lua require'telescope'.extensions.project.project{}<CR>",
{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
'n',
'<leader>fr',
":lua require'telescope'.extensions.frecency.frecency{}<CR>",
{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
'n',
'<leader>fp',
":Telescope git_files<CR>",
{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
'n',
'<leader>ff',
"<cmd>lua require('telescope.builtin').live_grep()<cr>",
{noremap = true, silent = true}
)
