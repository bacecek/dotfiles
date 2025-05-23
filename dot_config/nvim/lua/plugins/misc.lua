return {
  {
    "preservim/nerdcommenter",
    config = function()
      vim.keymap.set("n", "<Leader>c", "<Plug>NERDCommenterToggle", { desc = "Toggle comment" })
      vim.keymap.set("v", "<Leader>c", "<Plug>NERDCommenterToggle", { desc = "Toggle comment (visual)" })
    end,
  },
}
