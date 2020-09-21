"new line
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
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set smarttab
set shiftround
set spelllang=en,es

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/preservim/nerdtree.git' "file manager
Plug 'https://github.com/Haron-Prime/evening_vim.git' "colorscheme
Plug 'https://github.com/itchyny/lightline.vim.git' "color bottom bar
call plug#end()

colorscheme evening

"Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-W><C-H>
map <C-l> <C-W><C-L>
map <C-j> <C-W><C-J>
map <C-k> <C-W><C-K>
map <Tab> gt
nmap <CR> :tabnew<CR>
imap ( ()<left>
imap { {}<left>
inoremap {<cr> {<cr>}<ESC><S-o><Tab>
imap [ []<left>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
imap <C-Space> <ESC>

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
