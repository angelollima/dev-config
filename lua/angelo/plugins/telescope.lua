return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true}

    map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- Fuzzy find files in cwd
    map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts) -- Fuzzy find recent files
    map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- Find string in cwd
    map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- Find string under cursor in cwd
  end,
}
