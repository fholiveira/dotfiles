source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

"Configurando tabulacao
autocmd BufNewFile,BufRead *.jinja set filetype=html
autocmd BufNewFile,BufRead *.check set filetype=c
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufNewFile,BufRead *.cs set filetype=cs
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufNewFile,BufRead *.clj set filetype=clojure

autocmd FileType go setlocal ai ts=4 sta fo=croql
autocmd FileType python,c,ch,cs,haskell setlocal ai sw=4 ts=4 sta et fo=croql
autocmd FileType coffee,html,css,json,stylus,jinja,javascript,sh,less setlocal ai sw=2 ts=2 sta et fo=croql

let mapleader = "\<Space>"

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Hardmode config
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Coisas uteis
set history=700
set undolevels=700

" Mapeando o <esc> para <jj> em modo de inserção
imap jj <ESC>

nmap oo o<ESC>
nmap OO O<ESC>

" Deixando a busca indiferente a letras maiusculas e minusculas
set ignorecase
set smartcase

" Desabilitando o backup e swap automatico
set nobackup
set nowritebackup
set noswapfile

" Configurando o emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Configurando o jedi-vim 
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0

" Rainbow Parentheses
autocmd FileType clojure RainbowParenthesesToggle
autocmd FileType clojure RainbowParenthesesLoadRound
autocmd FileType clojure RainbowParenthesesLoadSquare
autocmd FileType clojure RainbowParenthesesLoadBraces

" Deixando tudo colorido..
set t_Co=256
colorscheme distinguished

set number
set colorcolumn=81

" Configurações específicas por SO
source $DOTFILES/platforms/current/vimrc

"Ctrl-P maps
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-e>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
