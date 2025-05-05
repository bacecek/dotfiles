require("lazy").setup({
  defaults = { lazy = true },
  checker  = { enabled = false },

  spec = {

    { import = "plugins.colorscheme" },

    { import = "plugins.treesitter" },

    { import = "plugins.mason" },
    { import = "plugins.lsp" },

    { import = "plugins.completion" },

    { import = "plugins.typr" },
    { import = "plugins.tree" },
  },
})
