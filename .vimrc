call plug#begin('~/.local/share/nvim/plugged')

Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'carlitux/deoplete-ternjs'
Plug 'airblade/vim-gitgutter'

" Create a file-tree
Plug 'scrooloose/nerdtree'

" Languages
Plug 'b4winckler/vim-objc'
Plug 'rodjek/vim-puppet'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs'
Plug 'mxw/vim-jsx'
Plug 'gkz/vim-ls'
Plug 'kchmck/vim-coffee-script'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-vaultproject'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ekalinin/Dockerfile.vim'
Plug 'digitaltoad/vim-pug'
Plug 'osyo-manga/vim-monster'
Plug 'zchee/deoplete-jedi'
Plug 'uarun/vim-protobuf'
Plug 'CyCoreSystems/vim-cisco-ios'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'Matt-Deacalion/vim-systemd-syntax'

" Colorschemes
Plug 'dracula/vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Case-insensitive searching.
set ignorecase

" line number
set relativenumber
set number

" Global tab width.
set tabstop=2
" And again, related.
set shiftwidth=2
" And also expand tabs.
set expandtab

" Show invisibles
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Highlight current line
set cursorline

" Show 80 column line
set colorcolumn=80

" Enable syntax highlighting
syntax on

" Automatically reads changed files
set autoread

" Sets the colorscheme for terminal sessions too.
colorscheme dracula

" Set map leader
let mapleader = "\<Space>"

" Neomake
autocmd InsertLeave,BufWritePost * update | Neomake 

" Eslint
let g:neomake_javascript_enabled_makers = ['eslint']

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <leader>a :execute "Ag" expand("<cword>")<cr>
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag<space>

" Deoplete
let g:deoplete#enable_at_startup = 1

" Buffer mappings
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Ignore these folders 
set wildignore+=**/node_modules/**/*

" Always use clipboard
set clipboard+=unnamedplus

" Map <C-C> to <esc>
noremap <C-C> <esc>

" Go to start of line with H and to the end with L
noremap H ^
noremap L $

" ----------------------------------------------------------------------
" | Plugin - NerdTree                                                  |
" ----------------------------------------------------------------------

noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser

let g:NERDTreeHijackNetrw = 0
