return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            enable_check_bracket_line = false,
            map_cr = true,
            map_bs = true,
            check_ts = true,
            fast_wrap = {},
        })
    end,
}

