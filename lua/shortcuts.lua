local function nnoremap(keys, action)
  vim.api.nvim_set_keymap('n', keys, action, { noremap = true })
end

nnoremap('<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap('<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap('<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap('<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
