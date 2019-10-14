call plug#begin('~/.config/nvim/plugged')

Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mxw/vim-jsx' " JSX support
Plug 'ryanoasis/vim-devicons' " icons for files types
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " file drawer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'mattn/emmet-vim' " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'pangloss/vim-javascript' " JavaScript syntax plugin
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " css-in-js
Plug 'mhartington/oceanic-next'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:deoplete#enable_at_startup = 1
" Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
               \ 'jsx',
                \ 'javascript.jsx'
                \ ]

call plug#end()

filetype plugin indent on
syntax on
set relativenumber number

" Tab control
set expandtab             
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
"set completeopt+=longest

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

set background=dark

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
