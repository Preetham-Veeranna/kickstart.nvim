return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>t', ':NvimTreeToggle<CR>', { desc = 'NvimTree toggle' } },
  },
  opts = {},
}
