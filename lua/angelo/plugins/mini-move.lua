return {
  "echasnovski/mini.nvim",
  config = function()
  local mappings = {
    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
    left = '<A-h>',
    down = '<A-y>',
    right = '<A-j>',
    up = '<A-k>',

    -- Move current line in Normal Mode
    line_left = '<A-h>',
    line_right = '<A-l>',
    line_down = '<A-j>',
    line_up = '<A-k>'
  }

  require('mini.move').setup {
    mappings = mappings
  }

  end,
}
