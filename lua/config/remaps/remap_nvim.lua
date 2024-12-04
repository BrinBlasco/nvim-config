
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>:w<Enter>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<leader>pw", function ()
    local symbol = vim.fn.input("Enter symbol: ")
    local combined_input = "c" .. symbol .. '<C-r>"'
    vim.api.nvim_input(combined_input)
end)