-- This file can be loaded by calling `lua require(plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'benfowler/telescope-luasnip.nvim'
    }

    use({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function() 
            vim.cmd('colorscheme kanagawa')
        end
    })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    }
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recomendado para Neovim >= 0.10
        ft = { 'rust' },
    }
    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
                -- your config goes here
                -- or just leave it empty :)
            }
        end,
    })
    use "windwp/nvim-autopairs"
    use {
        'barrett-ruth/live-server.nvim',
        build = 'pnpm add -g live-server',
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        config = true
    }

    use {
        'lervag/vimtex'
    }

    use {
        'neovim/nvim-lspconfig',
        'mason-org/mason.nvim',
        "mason-org/mason-lspconfig.nvim",
    }
    use {
        {'folke/tokyonight.nvim'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'saadparwaiz1/cmp_luasnip'}
    }

    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    use {
        "iurimateus/luasnip-latex-snippets.nvim",
        -- vimtex isn't required if using treesitter
        requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
        config = function()
            require'luasnip-latex-snippets'.setup()
            -- or setup({ use_treesitter = true })
            require("luasnip").config.setup { enable_autosnippets = true }
            require("luasnip").config.setup { use_treesitter = true }
        end,
    }

    use "rafamadriz/friendly-snippets"

end)
