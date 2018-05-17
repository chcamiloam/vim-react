" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'sbdchd/neoformat'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'valloric/matchtagalways'
Plug 'vim-airline/vim-airline'
Plug 'sickill/vim-monokai'
Plug 'isruslan/vim-es6'
Plug 'justinj/vim-react-snippets'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }


" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Initialize plugin system
call plug#end()

"Config Plugins ---- Important

" Enable vim-jsx on .js files
let g:jsx_ext_required = 0

let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \}

syntax enable

" a classic Color scheme <3
colorscheme monokai

" Lines number
set number
" Wrap Lines
set nowrap

" Indent settings
set shiftwidth=2
set smartindent
set smarttab	
set softtabstop=2

" Open NERDTree when vim start
autocmd vimenter * NERDTree

" Config ctrlp 
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" This config is for gVim
set guioptions +=m
set guioptions -=T
