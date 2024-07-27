return {
    {
        'hrsh7th/nvim-cmp',
        event = { "BufReadPost" , "BufNewFile" },
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            { 'L3MON4D3/LuaSnip', build = "make install_jsregexp" , dependencies = { "rafamadriz/friendly-snippets" }},
            'saadparwaiz1/cmp_luasnip',
        },

        config = function()
            local complete = require("cmp")
            local luasnip = require('luasnip')
            require("luasnip.loaders.from_vscode").lazy_load()
            complete.setup({
                snippet = {
                    expand = function(args)
                        print("configured")
                        luasnip.lsp_expand(args.body)
                    end,
                },
                window = {
					completion = complete.config.window.bordered(),
					documentation = complete.config.window.bordered(),
				},
                mapping = complete.mapping.preset.insert({
                    ["<C-k>"] = complete.mapping.select_prev_item(),
                    ["<C-h>"] = complete.mapping.scroll_docs(-4),
                    ["<C-j>"] = complete.mapping.select_next_item(),
                    ["<C-l>"] = complete.mapping.scroll_docs(4),
                    ["<C-Space>"] = complete.mapping.complete({}),
                    ["<CR>"] = complete.mapping.confirm({ select = true }),
                    ['<Tab>'] = complete.mapping(function(fallback)
                        if complete.visible() then
                            complete.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { "i","s" }),
                    ['<S-Tab>'] = complete.mapping(function(fallback)
                        if complete.visible() then
                            complete.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, {"i","s"})
                }),
                sources = complete.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'buffer', max_item_count = 5 },
                    { name = 'luasnip' },
                    { name = 'path' , max_item_count = 3 },
                }),
                experimental = {
                    ghost_text = true
                }
            })
        end
    }
}
