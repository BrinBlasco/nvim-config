require('config.remaps.remap_generic')
if vim.g.vscode then
    require('config.remaps.remap_vscode')
else
    require('config.remaps.remap_nvim')
end