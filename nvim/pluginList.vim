"This file is for linking plugins for vim-plug to download.
"
"Directory where vim-plug saves the plugins
call plug#begin('~/.config/nvim/plugs')



" -- features --
"status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

"mason - lsp, lint, and dap package manager
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

"Fuzzy searching tool
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'

"cmp - autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"snippets
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'saadparwaiz1/cmp_luasnip'

"move to designated character on screen
Plug 'easymotion/vim-easymotion'

"git integration
Plug 'tpope/vim-fugitive'

"nice looking directory tree
Plug 'preservim/nerdtree'

"LaTex functionality
Plug 'lervag/vimtex'

"wiki functionality
Plug 'vimwiki/vimwiki'

" -- visual --
"Smooth scrolling so your eyes don't bleed
Plug 'psliwka/vim-smoothie'
"for prose style line wrapping
Plug 'preservim/vim-pencil'
"distraction free mode
Plug 'junegunn/goyo.vim'
"indent guides
Plug 'lukas-reineke/indent-blankline.nvim'

" -- colorschemes --
Plug 'hzchirs/vim-material'
Plug 'ajmwagar/vim-deus'
"Plug 'chriskempson/base16-vim'
Plug 'RRethy/nvim-base16'
Plug 'https://github.com/sblauen/chalk.git'

" -- highlighting --
"Syntax highlighting for everything
"Plug 'https://github.com/sheerun/vim-polyglot'
"Syntax highlighting for kitty terminal configuration
Plug 'fladson/vim-kitty'

" -- end --

call plug#end()
