return {
  'johnseth97/codex.nvim',
  lazy = true,
  cmd = { 'Codex', 'CodexToggle' }, -- Optional: Load only on command execution
  keys = {
    {
      '<leader>cc',
      function() require('codex').toggle() end,
      desc = 'Toggle Codex popup',
    },
  },
  -- Disable the floating terminal's 'q' mapping (terminal mode) set by codex.nvim
  config = function(_, opts)
    require('codex').setup(opts)
    -- Remove the 'q' term-mode mapping in buffers running the codex CLI
    local group = vim.api.nvim_create_augroup('DisableCodexQMap', { clear = true })
    vim.api.nvim_create_autocmd('TermOpen', {
      group = group,
      pattern = 'term://*codex*',
      callback = function(ev)
        pcall(vim.api.nvim_buf_del_keymap, ev.buf, 't', 'q')
      end,
    })
  end,
}
