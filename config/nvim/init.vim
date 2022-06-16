""" Plugins"""

call plug#begin(stdpath('data') . '/plugged')
" Plugin Section
 Plug 'morhetz/gruvbox'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 " A fuzzy file finder
 Plug 'kien/ctrlp.vim'
 " Comment/Uncomment tool
 Plug 'scrooloose/nerdcommenter'
 " Switch to the begining and the end of a block by pressing %
 Plug 'tmhedberg/matchit'
 Plug 'vim-airline/vim-airline'
 " Airline themes
 Plug 'vim-airline/vim-airline-themes'
 " Nord
 Plug 'arcticicestudio/nord-vim'
 " Git integration
 Plug 'tpope/vim-fugitive'
 " Git diff highlighting 
 Plug 'airblade/vim-gitgutter'
 " Better syntax-highlighting for filetypes in vim
 Plug 'sheerun/vim-polyglot'
 " Add surrounding text in pairs
 Plug 'tpope/vim-surround'
 " Debugger
 Plug 'puremourning/vimspector'
 " tab switching
 Plug 'vim-ctrlspace/vim-ctrlspace'
 " text search 
 Plug 'mileszs/ack.vim'
 call plug#end()


"""Configuration"""

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
imap jj <ESC>               " jj for escape
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
set completeopt=menu,menuone,noselect " better autocomplete options
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set hidden 
set encoding=utf-8
" Vimspector mappings
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
nmap <LocalLeader><F12> <Plug>VimspectorDownFrame

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Nerdtree configuration
let NERDTreeShowHidden=1

" nerdcommenter configuration
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" color schemes
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" configure search 
let g:ackprg = 'ag --nogroup --nocolor --column'

syntax enable
colorscheme gruvbox
" open new split panes to right and below
set splitright
set splitbelow
