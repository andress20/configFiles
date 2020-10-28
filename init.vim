"those 3 lines below let share configuration between vim and 
"nevim just in case I want back to vim my configuration remain save
""set runtimepath^=~/.vim runtimepath+=/.vim/after
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
Plug 'https://github.com/itchyny/lightline.vim.git' "color bottom bar
Plug 'https://github.com/preservim/nerdcommenter.git' "commenter plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete and more tools
"Plug 'https://github.com/yegappan/taglist.git'
"Plug 'yegappan/taglist'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator' "move between split-panels
call plug#end()

colorscheme gruvbox
let g:gruvbox_constrat_dark = "hard"


"Mappings

map <C-n> :NERDTreeToggle<CR>
map <Tab> gt
map <C-ñ> <ESC>:w<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <C-a> gg<S-v><S-g>
nmap <CR> :tabnew<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
imap ( ()<left>
imap { {}<left>
imap <C-L>. console.log(
imap [ []<left>
inoremap {<cr> {<cr>}<ESC><S-o>
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
