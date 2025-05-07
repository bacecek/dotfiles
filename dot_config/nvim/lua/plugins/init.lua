require("lazy").setup({
  checker  = { enabled = false },

  spec = {

    { import = "plugins.colorscheme" },

    { import = "plugins.treesitter" },

    { import = "plugins.lsp" },

    { import = "plugins.typr" },
    { import = "plugins.tree" },
  },
})
