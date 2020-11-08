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
Plug 'easymotion/vim-easymotion' "search words and go there
Plug 'christoomey/vim-tmux-navigator' "move between split-panels
Plug 'https://github.com/tpope/vim-surround.git' "type () over a word 
Plug 'matze/vim-move' "swap lines up / down
Plug 'alvan/vim-closetag' " close auto html tags
" these next 3 lines are FZF files searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
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
"Mappings

map <C-n> :NERDTreeToggle<CR>
map <Tab> gt
map <C-ñ> <ESC>:w<CR>
nnoremap <Leader>s <Plug>(easymotion-s2)
nnoremap <C-a> gg<S-v><S-g>
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
inoremap <C-L>. console.log(
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
