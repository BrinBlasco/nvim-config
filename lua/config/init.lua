require('config.remaps')
require('config.sets')

if not vim.g.vscode then
    require('config.lazy_init')
end