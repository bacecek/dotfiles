local map = vim.keymap.set

map("n", "<Leader>e", function()
  vim.diagnostic.open_float(nil, { scope = "cursor" })
end, { silent = true })
