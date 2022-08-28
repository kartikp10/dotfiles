local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself


    -- status line
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }


    -- buffer line
    use "akinsho/bufferline.nvim"


    -- tmux statusline
    use "edkolev/tmuxline.vim"


    -- Git integration
    use "lewis6991/gitsigns.nvim"
    use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }


    -- terraform lsp
    use "hashivim/vim-terraform"


    -- Add surrounding text in pairs
    use "tpope/vim-surround"


    -- auto pair completion
    use "windwp/nvim-autopairs"


    -- Debugger
    --use "puremourning/vimspector"
    use "mfussenegger/nvim-dap"
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use "theHamsta/nvim-dap-virtual-text"
    use "nvim-telescope/telescope-dap.nvim"
    -- language extensions
    use "mfussenegger/nvim-dap-python"
    use "leoluz/nvim-dap-go"


    -- Colorschemes
    use "sainnhe/everforest"
    use "sainnhe/gruvbox-material"
    use "EdenEast/nightfox.nvim"
    use "folke/tokyonight.nvim"
    use "shaunsingh/nord.nvim"
    use "luisiacc/gruvbox-baby"
    use "projekt0n/github-nvim-theme"
    use "navarasu/onedark.nvim"
    use 'sainnhe/sonokai'


    -- cmp plugins
    --use {"neoclide/coc.nvim", branch = "release"}
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    -- snippets
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"


    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters


    -- explorer
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", -- optional, for file icons
        }
    }


    -- comments
    use "scrooloose/nerdcommenter"


    -- snippets
    -- use "honza/vim-snippets"


    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'stevearc/dressing.nvim' }
    use {
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim',
    }


    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }


    -- Better terminal integration
    use "akinsho/toggleterm.nvim"


    -- Indent lines
    use "lukas-reineke/indent-blankline.nvim"


    -- Zen mode
    use "junegunn/limelight.vim"
    use "junegunn/goyo.vim"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
