vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>fr', ':FlutterRun<CR>')
vim.keymap.set('n', '<leader>fd', ':FlutterDevices<CR>')
vim.keymap.set('n', '<leader>fe', ':FlutterEmulators<CR>')
vim.keymap.set('n', '<leader>fre', ':FlutterReload<CR>')
vim.keymap.set('n', '<leader>fR', ':FlutterReload<CR>')
