vim.api.nvim_set_keymap(
'n',
'<leader>fp',
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
'<leader>fg',
":Telescope git_files<CR>",
{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
'n',
'<leader>ff',
':DashboardFindFile<CR>',
{noremap = true, silent = true}
)
