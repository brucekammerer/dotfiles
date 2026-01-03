return {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nord").setup({})
        vim.cmd.colorscheme("nord")
        vim.api.nvim_set_hl(0, 'Normal', { bg = 'None' })
        vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'None' })
        vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'None' })
    end,
}
