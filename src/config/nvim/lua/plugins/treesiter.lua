return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function ()
            local treesitter = require("nvim-treesitter.configs");
            treesitter.setup ({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown","markdown_inline" }
            })
        end
    }
}
