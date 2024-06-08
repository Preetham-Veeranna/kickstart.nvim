return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>e', ':NvimTreeToggle<CR>', { desc = 'NvimTree toggle' } },
    { '<leader>tt', ':NvimTreeFocus<CR>', { desc = 'NvimTree focus' } },
  },
  opts = {
    on_attach = function(bufnr)
      local api = require 'nvim-tree.api'
      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- custom mappings
      vim.keymap.set('n', 'l', api.node.open.edit, opts 'Open')
      vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts 'Close Directory')
      vim.keymap.set('n', 'v', api.node.open.vertical, opts 'Open: Vertical Split')
      -- vim.keymap.del('n', '<C-k>', { buffer = bufnr })
      vim.keymap.set('n', '<S-k>', api.node.open.preview, opts 'Open Preview')
      vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
    end,
  },
}
