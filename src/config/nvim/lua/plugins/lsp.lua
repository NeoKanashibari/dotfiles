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
        config = config_lsp
    }
}
