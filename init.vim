""set runtimepath^=~/.vim runtimepath+=/.vim/after
"those 3 lines below let share configuration between vim and 
"nevim just in case I want back to vim my configuration remain save
"let &packpath=&runtimepath
"source ~/.vimrc
"this file must to be save in ~/.config/nvim directory

"SETUP

set title
set number
set relativenumber
set laststatus=2
set mouse=a
set showcmd
set encoding=utf-8
set clipboard=unnamed
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab cindent ai si
set shiftround
set spelllang=en,es
let mapleader = " "
let NERDTreeQuitOnOpen=1
syntax enable
filetype on

"Pluggins (vim Plug Manager)

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/preservim/nerdtree.git' "file manager
Plug 'morhetz/gruvbox' "colorscheme
Plug 'itchyny/lightline.vim' "color bottom bar
Plug 'itchyny/vim-gitbranch'
Plug 'https://github.com/preservim/nerdcommenter.git' "commenter plugin
Plug 'neoclide/coc.nvim' "Autocomplete and more tools
Plug 'easymotion/vim-easymotion' "search words and go there
Plug 'christoomey/vim-tmux-navigator' "move between split-panels
Plug 'https://github.com/tpope/vim-surround.git' "type () over a word 
Plug 'matze/vim-move' "swap lines up / down
Plug 'alvan/vim-closetag' " close auto html tags
Plug 'maxmellon/vim-jsx-pretty' "JSX color tags
Plug 'styled-components/vim-styled-components' "recordar mirar estos 2 pulg
"para stylecomponent mas adelante
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"these next 3 lines are FZF files searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'nathanaelkane/vim-indent-guides'
"FZF need install next 5 dependencies (https://www.chrisatmachine.com/Neovim/08-fzf/)
"sudo apt install fzf
"sudo apt install ripgrep
"sudo apt install universal-ctags
"sudo apt install silversearcher-ag
"sudo apt install fd-find

call plug#end()


colorscheme gruvbox
let g:gruvbox_constrat_dark = "hard"
let g:closetag_filenames= '*.js'
"let g:deoplete#enable_at_startup = 1 "recorar mirar mas adelante
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

"Mappings

map <C-n> :NERDTreeToggle<CR>
map <Tab> gt
map <Leader>s <Plug>(easymotion-s2)
nmap <silent> gd <Plug>(coc-definition)
nnoremap <C-a> gg<S-v><S-g>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
inoremap <C-L>. console.log()<left>
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<cr> {<cr>}<ESC><S-o>
inoremap (<cr> (<cr>)<ESC><S-o>
inoremap [<cr> [<cr>]<ESC><S-o>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
inoremap ` <c-r>=QuoteDelim("`")<CR>

"FUNCTIONS

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf
