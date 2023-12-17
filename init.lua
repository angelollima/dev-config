require("angelo.core")
require("angelo.lazy")

local cmd = vim.api.nvim_command

cmd("language en_US")
cmd("filetype plugin on")
cmd("syntax on")

cmd("hi Pmenu guibg='#6495ED33'")
cmd("hi LineNr guifg='#FF8700'")
cmd("hi CursorLineNr guifg='#FF8700'")
cmd("hi WarningMsg guifg='Yellow'")
cmd("hi Statement guifg='#FF8700'")
cmd("hi CursorColumn guibg='#565656'")
cmd("hi CursorLine guibg='#565656'")
