return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true}

    map("n", "<leader>wr", "<cmd>SessionRestore<CR>", opts) -- restore last workspace session for current directory
    map("n", "<leader>ws", "<cmd>SessionSave<CR>", opts) -- save workspace session for current working directory
  end,
}
