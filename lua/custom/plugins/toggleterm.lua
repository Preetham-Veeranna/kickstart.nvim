return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    vim.keymap.set('n', '<M-1>', ':ToggleTerm direction=horizontal<cr>', { desc = 'terminal horizontal' }),
    vim.keymap.set('n', '<M-2>', ':ToggleTerm direction=vertical<cr>', { desc = 'terminal vertical' }),
    vim.keymap.set('n', '<A-3>', ':ToggleTerm direction=float<cr>', { desc = 'terminal float' }),
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-\>]],
    -- config = {
    --   active = true,
    --   on_config_done = nil,
    --   -- size can be a number or function which is passed the current terminal
    --   open_mapping = [[<c-\>]],
    --   hide_numbers = true, -- hide the number column in toggleterm buffers
    --   shade_filetypes = {},
    --   shade_terminals = true,
    --   shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    --   start_in_insert = true,
    --   insert_mappings = true, -- whether or not the open mapping applies in insert mode
    --   persist_size = false,
    --   -- direction = 'vertical' | 'horizontal' | 'window' | 'float',
    --   direction = 'float',
    --   close_on_exit = true, -- close the terminal window when the process exits
    --   auto_scroll = true, -- automatically scroll to the bottom on terminal output
    --   shell = nil, -- change the default shell
    --   -- This field is only relevant if direction is set to 'float'
    --   float_opts = {
    --     -- The border key is *almost* the same as 'nvim_win_open'
    --     -- see :h nvim_win_open for details on borders however
    --     -- the 'curved' border is a custom border type
    --     -- not natively supported but implemented in this plugin.
    --     -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    --     border = 'curved',
    --     -- width = <value>,
    --     -- height = <value>,
    --     winblend = 0,
    --     highlights = {
    --       border = 'Normal',
    --       background = 'Normal',
    --     },
    --   },
    --   winbar = {
    --     enabled = false,
    --   },
    -- },
  },
}
