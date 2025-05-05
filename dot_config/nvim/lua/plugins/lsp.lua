return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local mason_lsp = require("mason-lspconfig")
      mason_lsp.setup({ ensure_installed = {
        "bash-language-server",
        "vscode-java-decompiler",
        "json-lsp",
        "java-debug-adapter",
        "gitlab-ci-ls",
        "vim-language-server",
        "clangd",
        "yaml-language-server",
        "gradle-language-server",
        "dot-language-server",
        "pyright",
        "kotlin-debug-adapter",
        "kotlin-language-server",
        "java-test",
        "html-lsp",
        "markdown-oxide",
        "copilot-language-server",
        "lua-ls",
        "java-language-server",
        "ktlint",
        "gh-actions-language-server",
        "rust-analyzer"
    }})

      mason_lsp.setup_handlers(vim.tbl_extend("force", {
        lua_ls = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                runtime = {
                  version = "LuaJIT",
                  path    = vim.split(package.path, ";"),
                },
                diagnostics = {
                  globals = { "vim" },
                },
                workspace = {
                  library         = vim.api.nvim_get_runtime_file("", true),
                  checkThirdParty = false,
                },
                telemetry = {
                  enable = false,
                },
              },
            },
          })
        end,
      }, {
        function(server)
          require("lspconfig")[server].setup({})
        end,
      }))
    end,
  },
}
