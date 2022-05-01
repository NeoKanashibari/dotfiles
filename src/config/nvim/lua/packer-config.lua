-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  
  -- Status Line
  use { 
    'feline-nvim/feline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons' -- Icons
    },
  }
  use 'tanvirtin/monokai.nvim' -- Color
end)
