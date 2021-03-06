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
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }


  -- buffer line
  use "akinsho/bufferline.nvim"


  -- tmux statusline
  use "edkolev/tmuxline.vim"


  -- Git integration
  use "lewis6991/gitsigns.nvim"


  -- terraform lsp
  use "hashivim/vim-terraform"


  -- Add surrounding text in pairs
  use "tpope/vim-surround"


  -- Debugger
  use "puremourning/vimspector"


  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "sainnhe/everforest"
  use "sainnhe/gruvbox-material"


  -- cmp plugins
  use {"neoclide/coc.nvim", branch = "release"}


  -- comments
  use "scrooloose/nerdcommenter"


  -- snippets
  use "honza/vim-snippets"


  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-lua/plenary.nvim"


  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }


  -- Better terminal integration
    use "akinsho/toggleterm.nvim"


  -- Indent lines
  use "lukas-reineke/indent-blankline.nvim"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
