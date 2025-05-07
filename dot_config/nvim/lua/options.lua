local opts = {
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

-- Set up filetype-specific indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})

local g = {
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,
}

for k, v in pairs(g) do
  vim.g[k] = v
end
