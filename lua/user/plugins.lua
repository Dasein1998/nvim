local lazypath = vim.fn.stdpath('data') .. 'lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {
            'git',
            'clone',
            '--filter=blob:none',
            'https://github.com/folke/lazy.nvim.git',
            '--branch=stable', -- latest stable release
            lazypath
        }
    )
end
vim.opt.rtp:prepend(lazypath)
local lazy = require 'lazy'
lazy.setup(
    {
        {'nvim-lua/plenary.nvim', event = 'VeryLazy'}, -- ,ful lua functions ,d by lots of plugins
        {'windwp/nvim-autopairs', event = 'VeryLazy'}, -- Autopairs, integrates with both cmp and treesitter
        {'JoosepAlviste/nvim-ts-context-commentstring', event = 'VeryLazy'},
        {'kyazdani42/nvim-web-devicons'},
        {'kyazdani42/nvim-tree.lua',lazy = false},
        {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            dependencies = {
              "nvim-lua/plenary.nvim",
              "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
              "MunifTanjim/nui.nvim",
              -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
            }
        },
        {'akinsho/bufferline.nvim', event = 'VeryLazy'},
        {'moll/vim-bbye', event = 'VeryLazy'},
        {'nvim-lualine/lualine.nvim', event = 'VeryLazy'},
        {'akinsho/toggleterm.nvim', event = 'VeryLazy'},
        {'ahmedkhalf/project.nvim', event = 'VeryLazy'},
        {'lewis6991/impatient.nvim', event = 'VeryLazy'},
        {'lukas-reineke/indent-blankline.nvim',  main = "ibl",opts = {},event = 'VeryLazy'},
        {'goolord/alpha-nvim'},
        {'folke/which-key.nvim',
            config = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 600
            end},
        -- Colorschemes
        {'folke/tokyonight.nvim', event = 'VeryLazy'},
        {'lunarvim/darkplus.nvim', event = 'VeryLazy'},
        -- Cmp https://github.com/hrsh7th/nvim-cmp
        {'hrsh7th/nvim-cmp'}, -- The completion plugin
        {'hrsh7th/cmp-buffer', event = 'VeryLazy'}, -- buffer completions
        {'hrsh7th/cmp-path', event = 'VeryLazy'}, -- path completions
        {'saadparwaiz1/cmp_luasnip', event = 'VeryLazy'}, -- snippet completions
        {'hrsh7th/cmp-nvim-lsp', event = 'VeryLazy'},
        {'hrsh7th/cmp-nvim-lua', event = 'VeryLazy'},
        {'hrsh7th/cmp-cmdline'},
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        {'tzachar/cmp-fuzzy-buffer', dependencies = {'hrsh7th/nvim-cmp', 'tzachar/fuzzy.nvim'}},
        -- Snippets
        {'L3MON4D3/LuaSnip', event = 'VeryLazy'}, --snippet engine
        {'rafamadriz/friendly-snippets', event = 'VeryLazy'}, -- a bunch of snippets to ,
        -- LSP
        {'neovim/nvim-lspconfig', event = 'VeryLazy'}, -- enable LSP
        {'williamboman/mason.nvim', event = 'VeryLazy'},
         -- simple to , language server installer
        {'williamboman/mason-lspconfig.nvim', event = 'VeryLazy'},
        --{'jose-elias-alvarez/-ls.nvim', event = 'VeryLazy'}, -- for formatters and linters
        {'RRethy/vim-illuminate', event = 'VeryLazy'},
        -- Telescope
        {'nvim-telescope/telescope.nvim', event = 'VeryLazy'},
        -- Treesitter
        {'nvim-treesitter/nvim-treesitter', event = 'VeryLazy'},
        -- Git
        {'lewis6991/gitsigns.nvim', event = 'VeryLazy'},
        -- dasein
        {'simrat39/symbols-outline.nvim', event = 'VeryLazy'},
        {'dstein64/vim-startuptime', event = 'VeryLazy'},
        {'lervag/vimtex', event = 'VeryLazy'},
        {'ggandor/leap.nvim', event = 'VeryLazy'},
        {'stevearc/oil.nvim', event = 'VeryLazy'},
        {'TimUntersberger/neogit', event = 'VeryLazy'},
         --https://github.com/TimUntersberger/neogit
        {'mrjones2014/legendary.nvim', event = 'VeryLazy'},
         --https://github.com/mrjones2014/legendary.nvim
        {
            'numToStr/Comment.nvim',
            event = 'VeryLazy',
            init = function()
                require('Comment').setup()
            end
        },
         --https://github.com/numToStr/Comment.nvim
        
    }
)
