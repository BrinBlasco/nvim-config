require('config.sets.set_generic')
if vim.g.vscode then
    require('config.sets.set_vscode')
else
    require('config.sets.set_nvim')
end