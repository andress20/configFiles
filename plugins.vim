call plug#begin('~/.config/nvim/plugged')

"Pluggins (vim Plug Manager)
Plug 'https://github.com/preservim/nerdtree.git' "file manager
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
"Plug 'jremmen/vim-ripgrep'
"Plug 'morhetz/gruvbox' "colorscheme
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'arcticicestudio/nord-vim' "colorscheme
Plug 'itchyny/lightline.vim' "color bottom bar
Plug 'itchyny/vim-gitbranch'
Plug 'https://github.com/preservim/nerdcommenter.git' "commenter plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete and more tools
Plug 'easymotion/vim-easymotion' "search words and go there
Plug 'christoomey/vim-tmux-navigator' "move between split-panels
Plug 'https://github.com/tpope/vim-surround.git' "type () over a word 
Plug 'matze/vim-move' "swap lines up / down
Plug 'alvan/vim-closetag' " close auto html tags
Plug 'maxmellon/vim-jsx-pretty' "JSX color tags
Plug 'styled-components/vim-styled-components' "recordar mirar estos 2 pulg para stylecomponent mas adelante
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "completion
Plug 'nathanaelkane/vim-indent-guides'
Plug 'editorconfig/editorconfig-vim'
Plug 'eslint/eslint'
Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"these next 3 lines are FZF files searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"FZF need install next 5 dependencies (https://www.chrisatmachine.com/Neovim/08-fzf/)
"sudo apt install fzf
"sudo apt install ripgrep
"sudo apt install universal-ctags
"sudo apt install silversearcher-ag
"sudo apt install fd-find
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
