

local map = vim.keymap.set

map( "n", ";", ":", { desc = "CMD enter command mode" })
map( "n", "<leader>dbb", ":DapToggleBreakpoint<CR>", { desc = "Add Breakpoint at line" })
map( "n", "<leader>dbr", ":DapContinue<CR>", { desc = "Run debugger" })
map( "n", "<S-s>", ":Telescope fd<CR>", { desc = "Telescope Files"} )
map( "n", "h", ":HexToggle<CR>", { desc = "Toggle Hex Mode"} )
map( "n", "<C-o>", ":Outline<CR>", { desc = "Open Code Outline"} )
map( "n", "sc", ":Silicon<CR>", { desc = "Copy Current File Code Preview "} )
map( "n", "<C-S-s>", ":SudoWrite", { desc = "Write With Root Priveleges"} )
map( "n", "q", ":NvimTreeToggle<CR>:bd<CR>:NvimTreeToggle<CR>", { desc = "Close Current Buffer"})
map( "v", "sc", ":Silicon<CR>", { desc = "Copy Selected Code Preview"} )
