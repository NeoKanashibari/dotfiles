local function  adapters()
    local dap = require("dap")
    dap.adapters.gdb = {
        type = "executable",
        command = "/usr/sbin/gdb",
        args = { "--quiet" , "-i", "dap" }
    }
end

local function  keybind()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>db', function() require("dap").toggle_breakpoint() end, opts)
    vim.keymap.set('n', '<leader>dc', function() require("dap").continue() end, opts)
    vim.keymap.set('n', '<C-j>', function() require("dap").step_over() end, opts)
    vim.keymap.set('n', '<C-l>', function() require("dap").step_into() end, opts)
end

local function  configurations()
    local dap = require("dap")
    local gdb_generic = {
        {
            name = "Launch",
            type = "gdb",
            request = "launch",
            program = function ()
                return vim.fn.input('Path to executable: ',vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = "${workspaceFolder}",
            stopAtBeginningOfMainSubprogram = false
        }
    }
    dap.configurations.c = gdb_generic
    dap.configurations.cpp = gdb_generic
    dap.configurations.rust = gdb_generic
    dap.configurations.repl = { }
end;

return {
    {
        'mfussenegger/nvim-dap',
        config = function ()
            configurations()
            adapters()
            keybind()
        end,
    },
}
