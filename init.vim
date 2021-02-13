set title
set ruler
set cursorline
set number
set relativenumber
set laststatus=2
set mouse=a
set showcmd
set showmatch
set encoding=utf-8
set clipboard=unnamed
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab cindent ai si
set shiftround
set spelllang=en,es
let NERDTreeQuitOnOpen=1
syntax on
filetype on
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/functions.vim

colorscheme gruvbox
let g:gruvbox_constrat_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode


let g:closetag_filenames= '*.js' "JSX pretty close tags
"show git branch name on the bar
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

