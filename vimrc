call plug#begin()
Plug 'mattn/emmet-vim' , { 'for': ['html', 'htmldjango','css', 'javascript.jsx'] }

Plug 'tpope/vim-surround' 

Plug 'tpope/vim-commentary' 

Plug 'sheerun/vim-polyglot'

Plug 'prettier/vim-prettier', {
			\ 'on': [],
			\ 'do': 'npm install',
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

filetype plugin on
filetype indent on
set tabstop=4
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cindent
syntax enable
set number
set encoding=utf-8
nmap <Tab> <C-W><C-W>

let python_highlight_all=1
let g:user_emmet_install_global = 0

autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','



" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'false'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = '2'

autocmd BufRead,BufNewFile   *.pp setlocal smartindent tabstop=2 expandtab
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
