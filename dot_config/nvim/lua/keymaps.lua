local map = vim.keymap.set

map('n', '<Leader>e', function()
  vim.diagnostic.open_float(nil, { scope = 'cursor' })
end, { silent = true })
map('n', '<leader>f', vim.lsp.buf.format, { desc = "Format document" })

map("n", "<Leader>z", ":terminal zsh -i<CR>")
map("t", "<Esc>", "<C-\\><C-n>")

map('v', '<leader>y', '"+y', { noremap = true, silent = true })
map('n', '<leader>p', '"+p', { noremap = true, silent = true })

