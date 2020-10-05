"those 3 lines below let share configuration between vim and 
"nevim just in case I want back to vim my configuration remain save
""set runtimepath^=~/.vim runtimepath+=/.vim/after
"let &packpath=&runtimepath
"source ~/.vimrc
"this file must to be save in ~/.config/nvim directory
set title
set number
set relativenumber
set laststatus=2
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
let mapleader = "g"
set spelllang=en,es
filetype on
"In order to be able to install plugins let's install vim-plug Manager
"run on terminal the command below:
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"And then run :PlugInstall
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/preservim/nerdtree.git' "file manager
Plug 'https://github.com/Haron-Prime/evening_vim.git' "colorscheme
Plug 'https://github.com/itchyny/lightline.vim.git' "color bottom bar
Plug 'https://github.com/preservim/nerdcommenter.git' "commenter plugin
call plug#end()

colorscheme evening

"Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-W><C-H>
map <C-l> <C-W><C-L>
map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <Tab> gt
map <C-ñ> <ESC>:w<CR>
nmap <C-a> gg<S-v><S-g>
nmap <CR> :tabnew<CR>
imap ( ()<left>
imap { {}<left>
imap <C-L>. console.log(
imap [ []<left>
inoremap {<cr> {<cr>}<ESC><S-o>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
inoremap ` <c-r>=QuoteDelim("`")<CR>

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
