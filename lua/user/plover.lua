M = {}
-- for plover debuggin
-- local location = "~/Downloads/plover-4.0.0.dev10+120.g4394ef1-x86_64.AppImage"
-- local location = require("user.repl").getSource() or 
local location = vim.fn.expand('~/plover/.tox/dev/bin/')
location = "source "..location.."activate && plover"
local exec = location .. " --log-level debug\n"
local stop_exec = location ..  " -s plover_send_command quit\n"
-- starts plover
M.startPlover = function()
	require("harpoon.term").sendCommand(2, exec)
end
vim.keymap.set("n", '<leader>pr', function () require("user.plover").startPlover() end)
return M
