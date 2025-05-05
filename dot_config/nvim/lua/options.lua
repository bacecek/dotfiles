local opts = {
  expandtab   = true,
  shiftwidth  = 4,
  tabstop     = 4,
  softtabstop = 4,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end
