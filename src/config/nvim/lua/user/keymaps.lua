-- keymaps for telscope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})

-- vim.keymap.set('n', '<F2>', Lazi, {})

-- keymap for lsp
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
