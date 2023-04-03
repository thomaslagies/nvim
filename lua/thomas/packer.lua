-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("ellisonleao/gruvbox.nvim")
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('feline-nvim/feline.nvim')
  use('lewis6991/gitsigns.nvim')
  use('jose-elias-alvarez/null-ls.nvim')
  use('github/copilot.vim')
--  use {
--    "zbirenbaum/copilot.lua",
--    cmd = "Copilot",
--    event = "InsertEnter",
--    config = function()
--      require("copilot").setup({
--        panel = {
--          auto_refresh = true
--        },
--        suggestions = {
--          auto_trigger = true,
--        },
--        filetypes = {
--          markdown = true
--        },
--        copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v16.19.1/bin/node",
--      })
--    end,
--  }
  use { 
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end
  }
--  use {
--	  'VonHeikemen/lsp-zero.nvim',
--	  requires = {
--		  -- LSP Support
--		  {'neovim/nvim-lspconfig'},
--		  {'williamboman/mason.nvim'},
--		  {'williamboman/mason-lspconfig.nvim'},
--
--		  -- Autocompletion
--		  {'hrsh7th/nvim-cmp'},
--		  {'hrsh7th/cmp-buffer'},
--		  {'hrsh7th/cmp-path'},
--		  {'saadparwaiz1/cmp_luasnip'},
--		  {'hrsh7th/cmp-nvim-lsp'},
--		  {'hrsh7th/cmp-nvim-lua'},
--
--		  -- Snippets
--		  {'L3MON4D3/LuaSnip'},
--		  {'rafamadriz/friendly-snippets'},
--	  }
-- }
end)  
