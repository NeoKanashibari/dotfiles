local function  keybind()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>ds', function() print(require("dapui").open()) vim.opt.mouse = "nv" end, opts)
    vim.keymap.set('n', '<leader>dx', function() print(require("dapui").close()) vim.opt.mouse = "" end, opts)
    vim.keymap.set('n', '<leader>dw', function() print(require("dapui").eval()) end, opts)
end

return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dapui = require("dapui")
        dapui.setup()
        keybind()
    end

}
