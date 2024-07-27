return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'tanvirtin/monokai.nvim',
        },
        config = function()
            local lualine = require("lualine")
            lualine.setup({
                options = {
                    theme = "auto",
                    globalstatus = true,
                    icons_enabled = true,
                }
            })
        end
    }
}
