local function keybinds()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
    --vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

local function config_lsp()
    local lspconfig = require("lspconfig")
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    local servers = {
        --  cmake complete is available in the AUR those install those:
        --  https://aur.archlinux.org/packages/cmake-format
        --  https://aur.archlinux.org/packages/cmake-language-server
        cmake = {},
        clangd = {},
        pylsp= {},
        anakin_language_server = {},
        lua_ls = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim','opts' }
                    }
                }
            }
        },
        rust_analyzer = {}
    }

    for name, config in pairs(servers) do
        lspconfig[name].setup ({
            settings = config.settings
            --  on_attach = on_attach,
            --  root_dir = root_dir,
            --  capabilities = capabilities,
        })
    end
    require("lspconfig.ui.windows").default_options.border = "rounded"
    vim.diagnostic.config({
        float = {
            border = "rounded",
        },
    })
end

return {
    {
        "neovim/nvim-lspconfig",
        config = config_lsp,
        keybinds()
    }
}
