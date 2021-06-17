call plug#begin('~/.local/share/nvim/plugged')
"themes
Plug 'morhetz/gruvbox'

"Racket stuff
"Plug 'Olical/conjure', {'tag': 'v4.19.0'}
"Plug 'Olical/aniseed', { 'tag': 'v3.18.0' }
"Plug 'wlangstroth/vim-racket' 
"Racket autocomplete
"Plug 'MicahElliott/vrod' 


Plug 'mattn/emmet-vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle"

" Use release branch (recommend) Autocomplete & definition
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "More colors
Plug 'nvim-treesitter/playground'
Plug 'jiangmiao/auto-pairs'

"Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Ranger
Plug 'kevinhwang91/rnvimr'


"Plan:
"telescope with ranger to move around
"https://www.chrisatmachine.com/Neovim/07-ranger/mkdir ~/.config/ranger
"native lsp
"prettier
"tpope thing where you can move lines up and down
"Sidebar of my files
"Sneak and quickscope for moving around
"Whichkey
"Floterm & Codi

"git integration
"Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline call'

call plug#end()

