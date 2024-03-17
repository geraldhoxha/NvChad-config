return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

   -- My custom plugins 
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy=false,
    dependencies={
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- This is optional but I like
    },
    config = true,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build=function ()
      require('nvim-treesitter.install').update({with_sync = true})()
    end
  },
}
