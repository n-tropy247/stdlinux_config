" Provided by Riley Castelli and intended for use on stdlinux at OSU
call plug#begin('~/.local/share/nvim/plugged')

" ==========================================================
" Appearance
" ==========================================================

" Pretty statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Palenight colorscheme
Plug 'drewtempelmeyer/palenight.vim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Extra highlighting on NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" ==========================================================
" General
" ==========================================================

" File tree
Plug 'scrooloose/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Tag outline viewer; show current tag in status bar
Plug 'majutsushi/tagbar'

" Temporarily maximize splits (and restore it)
Plug 'szw/vim-maximizer'

" Distraction-free mode
Plug 'junegunn/goyo.vim'

" Note taking
Plug 'vimoutliner/vimoutliner'

" ==========================================================
" Editing
" ==========================================================

" Management of parenthesis, brackets, etc.
Plug 'tpope/vim-surround'

" Adjust dates
Plug 'tpope/vim-speeddating'

" Detect indentation
Plug 'tpope/vim-sleuth'

" Show indent guides for files indented with spaces
Plug 'Yggdroot/indentLine'

" Simple completion with <TAB>
Plug 'ajh17/VimCompletesMe'

" Visualize undo tree
Plug 'sjl/gundo.vim'

" Create tables
Plug 'dhruvasagar/vim-table-mode'

" Alignment tools
Plug 'junegunn/vim-easy-align'

" Highlight characters past column 80
Plug 'whatyouhide/vim-lengthmatters'

" Whitespace management
Plug 'ntpeters/vim-better-whitespace'

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" Manage to matching components
Plug 'andymass/vim-matchup'

" Autoclose quotes, parenthesis, brackets
Plug 'jiangmiao/auto-pairs'

" Word case utilities for searching and editing
Plug 'tpope/vim-abolish'

" Highlight current search result
Plug 'qxxxb/vim-searchhi'

" incsearch (dependency of `incsearch-fuzzy`)
Plug 'haya14busa/incsearch.vim'

" Fuzzy incsearch
Plug 'haya14busa/incsearch-fuzzy.vim'

" Show search count
Plug 'osyo-manga/vim-anzu'

" Improved search with *
Plug 'haya14busa/vim-asterisk'

" Comment operator
Plug 'tpope/vim-commentary'

" Tag management
Plug 'ludovicchabant/vim-gutentags'

" New text object based on indentation
Plug 'michaeljsmith/vim-indent-object'

" Useful mappings
Plug 'tpope/vim-unimpaired'

" Subword motions
Plug 'chaoren/vim-wordmotion'

" ==========================================================
" PHP
" ==========================================================

" Syntax
Plug 'StanAngeloff/php.vim'

" ==========================================================
" JavaScript
" ==========================================================

" Syntax
Plug 'pangloss/vim-javascript'

" ==========================================================
" XML/HTML
" ==========================================================

" Emmet
Plug 'mattn/emmet-vim'

" Autoclose tags
Plug 'alvan/vim-closetag'

" ==========================================================
" Markdown
" ==========================================================

Plug 'plasticboy/vim-markdown'

" ==========================================================
" C++
" ==========================================================

" Syntax
Plug 'octol/vim-cpp-enhanced-highlight'

" ==========================================================
" LaTeX
" ==========================================================

Plug 'lervag/vimtex'

" ==========================================================
" nim
" ==========================================================

Plug 'zah/nim.vim'

" ==========================================================
" GLSL
" ==========================================================

Plug 'tikhomirov/vim-glsl'

" ==========================================================
" Pug
" ==========================================================

Plug 'digitaltoad/vim-pug'

" ==========================================================
" Rust
" ==========================================================

" Needs to be before rust.vim
Plug 'cespare/vim-toml'

Plug 'rust-lang/rust.vim'

" ==========================================================
" Other
" ==========================================================

" Git integration
Plug 'tpope/vim-fugitive'

" Show git diff in gutter
Plug 'airblade/vim-gitgutter'

" Repeat action from plugin
Plug 'tpope/vim-repeat'

" Calendar application
Plug 'itchyny/calendar.vim'

call plug#end()
" Automatically executes:
"   filetype plugin indent on
"   syntax enable

