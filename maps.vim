
let mapleader = " "

map <C-n> :NERDTreeToggle<CR>
"clean search
map <C-z> :noh<esc><CR> 
map <Tab> gt
map <Leader>s <Plug>(easymotion-s2)
nmap <Leader>py <Plug>(Prettier)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nnoremap <C-a> gg<S-v><S-g>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
inoremap jj <ESC>
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

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" run current file
noremap <Leader>x :!node %<cr>
noremap <Leader>xp :!python3 %<cr>

"move up and down between completion menu coc options 
inoremap <expr> <c-j>
   \ coc#pum#visible() ? coc#pum#next(1) :
   \ coc#jumpable() ? "\<cr>=coc#rpc#request('snippetNext', [])<cr>" :
   \ "\<c-j>"

inoremap <expr> <c-k>
   \ coc#pum#visible() ? coc#pum#prev(1) :
   \ coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" :
   \ "\<c-k>"

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "gP
