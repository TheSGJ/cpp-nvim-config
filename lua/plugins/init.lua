return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  
  {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      opts = function()
        return require "configs.null-ls"
      end,
  },

  {
     "neovim/nvim-lspconfig",
     config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
        require "configs.mylspconfig"
     end,
  },
  
   {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
   			"clangd",
        "clang-format"
   		},
  },
  },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
