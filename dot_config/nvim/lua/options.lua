local opts = {
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

local g = {
    loaded_netrw = 1,
    loaded_netrwPlugin = 1,
}

for k, v in pairs(g) do
  vim.g[k] = v
end

