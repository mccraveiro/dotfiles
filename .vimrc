call plug#begin('~/.local/share/nvim/plugged')

Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

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

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Case-insensitive searching.
set ignorecase

" line number
set number

" Global tab width.
set tabstop=2
" And again, related.
set shiftwidth=2
" And also expand tabs.
set expandtab

" Enable syntax highlighting
syntax on

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <leader>a :execute "Ag" expand("<cword>")<cr>
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag<space>

" Ignore these folders 
set wildignore+=**/node_modules/**/*
