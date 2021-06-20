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


let g:closetag_filenames= '*.js, *.tsx' "JSX pretty close tags
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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'.config/nvim/snips/']
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
