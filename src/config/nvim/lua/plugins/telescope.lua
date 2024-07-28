local function  keybind()
    local opts = { noremap = true, silent = true }
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
    vim.keymap.set('n', '<leader>fg', builtin.grep_string, opts)
end


return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'tanvirtin/monokai.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-treesitter/nvim-treesitter',
        -- 'sharkdp/fd',
    };
    config = function()
            -- local telescope = require("telescope")
            keybind()
        end

}
