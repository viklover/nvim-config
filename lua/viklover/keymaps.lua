-- yank into +y buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)
