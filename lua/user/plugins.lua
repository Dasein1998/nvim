local lazypath = vim.fn.stdpath("data") .. "lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local lazy = require "lazy"
lazy.setup({
   { "nvim-lua/plenary.nvim" , event = "VeryLazy"} -- ,ful lua functions ,d by lots of plugins
  , { "windwp/nvim-autopairs", event = "VeryLazy"} -- Autopairs, integrates with both cmp and treesitter
  , { "numToStr/Comment.nvim", event = "VeryLazy" }
  , { "JoosepAlviste/nvim-ts-context-commentstring" , event = "VeryLazy"}
  , { "kyazdani42/nvim-web-devicons" , event = "VeryLazy"}
  , { "kyazdani42/nvim-tree.lua" , event = "VeryLazy"}
  , { "akinsho/bufferline.nvim" , event = "VeryLazy"}
	, { "moll/vim-bbye" , event = "VeryLazy"}
  , { "nvim-lualine/lualine.nvim" , event = "VeryLazy"}
  , { "akinsho/toggleterm.nvim" , event = "VeryLazy"}
  , { "ahmedkhalf/project.nvim" , event = "VeryLazy"}
  , { "lewis6991/impatient.nvim" , event = "VeryLazy"}
  , { "lukas-reineke/indent-blankline.nvim" }
  , { "goolord/alpha-nvim" }
	, {"folke/which-key.nvim", event = "VeryLazy"}

	-- Colorschemes
  , { "folke/tokyonight.nvim" }
  , { "lunarvim/darkplus.nvim"}

	-- Cmp 
  , { "hrsh7th/nvim-cmp" , event = "VeryLazy"} -- The completion plugin
  , { "hrsh7th/cmp-buffer" , event = "VeryLazy"} -- buffer completions
  , { "hrsh7th/cmp-path" , event = "VeryLazy"} -- path completions
	, { "saadparwaiz1/cmp_luasnip" , event = "VeryLazy"} -- snippet completions
	, { "hrsh7th/cmp-nvim-lsp" , event = "VeryLazy"}
	, { "hrsh7th/cmp-nvim-lua" , event = "VeryLazy"}

	-- Snippets
  , { "L3MON4D3/LuaSnip" , event = "VeryLazy"} --snippet engine
  , { "rafamadriz/friendly-snippets" , event = "VeryLazy"} -- a bunch of snippets to ,

	-- LSP
	, { "neovim/nvim-lspconfig" , event = "VeryLazy"} -- enable LSP
  , { "williamboman/mason.nvim" , event = "VeryLazy"}-- simple to , language server installer
  , { "williamboman/mason-lspconfig.nvim" , event = "VeryLazy"}
	, { "jose-elias-alvarez/null-ls.nvim" , event = "VeryLazy"} -- for formatters and linters
  , { "RRethy/vim-illuminate" , event = "VeryLazy",}

	-- Telescope
	, { "nvim-telescope/telescope.nvim" , event = "VeryLazy"}

	-- Treesitter
	, {"nvim-treesitter/nvim-treesitter", event = "VeryLazy"}

	-- Git
	, { "lewis6991/gitsigns.nvim" , event = "VeryLazy"}
-- dasein
  ,{ "dstein64/vim-startuptime"},

})