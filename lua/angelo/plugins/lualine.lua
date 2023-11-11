return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    local background = vim.opt.background:get()

    local colors = {
      black = '#080808',
      white = '#dadada',
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      red = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "#112638",
      orange = "#FF8700",
      gray = "#464a47",
    }

    local theme = {
      normal = {
        a = { bg = colors.black, fg = colors.orange, gui = "bold" },
        b = { bg = colors.black, fg = colors.gray },
        c = { bg = colors.orange, fg = colors.gray },
        x = { bg = colors.black, fg = colors.white, gui = "bold" },
        y = { bg = colors.gray, fg = colors.white },
        z = { bg = colors.gray, fg = colors.white },
      },
      insert = {
        a = { bg = colors.gray, fg = colors.bg, gui = "bold" },
      },
      visual = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
      },
      replace = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
      },
      command = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
      },
      terminal = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
      },
      inactive = {
        a = { bg = colors.bg, fg = colors.gray },
      },
    }

    local settings = {
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1) -- Excluir a função 'sub' para obter a string completa
          end,
        },
      },
      lualine_b = {
        {
          "branch",
          color = { fg = colors.violet, gui = "bold" },
        },
        {
          "diff",
          colored = true,
          diff_color = {
            added = { fg = colors.green, gui = "bold" },
            modified = { fg = colors.yellow, gui = "bold" },
            removed = { fg = colors.red, gui = "bold" },
          },
          symbols = { added = "+", modified = "~", removed = "-" },
        },
        {
          "diagnostics",
          symbols = { error = "▎", warn = "▎", info = "▎", hint = "▎" },
          diagnostics_color = {
            error = { fg = colors.red, gui = "bold,italic" },
            warn = { fg = colors.yellow, gui = "bold,italic" },
            info = { fg = colors.blue, gui = "bold,italic" },
            hint = { fg = colors.green, gui = "bold,italic" },
          },
        },
      },
      lualine_c = {
        {
          "buffers",
          hide_filename_extension = false,
          show_filename_only = false,
          show_modified_status = true,
          buffers_color = {
            active = { fg = colors.black, gui = "bold" },
            inactive = { fg = colors.white, gui = "italic" },
          },
        },
      },
      lualine_x = { "%l:%c  ▎ %L" },
      lualine_y = {},
      lualine_z = {},
    }

    require("lualine").setup({
      options = {
        theme = theme,
        section_separators = "",
        component_separators = "",
        disabled_filetypes = {
          "NvimTree",
          "dap-repl",
          "dapui_console",
          "dapui_breakpoints",
          "dapui_scopes",
          "dapui_stacks",
          "dapui_watches",
        },
      },
      sections = settings,
      inactive_sections = settings,
    })
  end,
}