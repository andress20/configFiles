
let mapleader = " "

map <C-n> :NERDTreeToggle<CR>
map <Tab> gt
map <Leader>s <Plug>(easymotion-s2)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
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

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" run current file
nnoremap <Leader>x :!node %<cr>
