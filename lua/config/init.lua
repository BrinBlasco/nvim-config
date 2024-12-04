require('config.remaps')
require('config.sets')

if not vim.g.vscode then
    require('config.lazy')

    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd

    local brin_group = augroup('Brin', {})
    local yank_group = augroup('Hightlight Yank', {})


    autocmd({"BufWritePre"}, {
        group = brin_group,
        pattern = "*",
        command = [[%s/\s\+$//e]],
    })

    autocmd('TextYankPost', {
        group = yank_group,
        pattern = '*',
        callback = function()
            vim.highlight.on_yank({
                higroup = 'IncSearch',
                timeout = 100,
            })
        end,
    })

    vim.api.nvim_create_autocmd("BufEnter", {
        group = brin_group,
        pattern = "*",
        callback = function()
            vim.cmd("lcd " .. vim.fn.expand("%:p:h"))
        end,
    })

end
