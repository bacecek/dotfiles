return {
  {
    "folke/persistence.nvim",
    lazy = false, -- загружается сразу, без условий
    config = function()
      require("persistence").setup({
        dir = vim.fn.stdpath("state") .. "/sessions/",
        options = { "buffers", "curdir", "tabpages", "winsize" },
      })

      -- автозагрузка сессии при запуске без файлов
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.argc() == 0 then
            require("persistence").load()
          end
        end,
      })
    end,
    keys = {
      { "<leader>qs", function() require("persistence").load() end,                desc = "Restore session" },
      { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore last session" },
      { "<leader>qd", function() require("persistence").stop() end,                desc = "Don't save session" },
    },
  },
}
